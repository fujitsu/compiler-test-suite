     module mod
       type :: base
          character(:),allocatable::na
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         allocate(var, source=value,stat=n)
         if (n==0 ) print *,5001
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3,k4
     allocate(value)
     allocate(value%name,source='ok')
     allocate(value%na,source='aa')
     allocate(ext::var)
     select type(var)
     type is(ext)
     allocate(var%name,source='xx')
     allocate(var%na,source='yy')
     end select
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
     if (var  %name(:)/='xx') print *,1101
     if (var  %na  (:)/='yy') print *,1111
       var%name(:)='11'
       var%na(:)='11'
       k1=loc(var%name)
       k3=loc(var%na  )
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
     if (value%na  (:)/='aa') print *,1011
       k2=              loc(value%name)
       k4=              loc(value%na)
     if (k1==k2) print *,2002
     if (k3==k4) print *,2012
     print *,'sngg789p : pass'
     end 

