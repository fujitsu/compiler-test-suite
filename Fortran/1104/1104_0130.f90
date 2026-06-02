     module mod
       type :: base
          integer(8)::d1
          character(:),allocatable::na
       end type base

       type, extends(base) :: ext
          integer(8)::d2
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(ext), intent(in) :: value
         var=value
         !allocate(var,source=value)
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3,k4
     allocate(value)
     allocate(value%name,source='ok')
     allocate(value%na,source='aa')
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var%name(:)='11'
       var%na(:)='11'
       k1=loc(var%name)
       k3=loc(var%na)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
     if (value%na  (:)/='aa') print *,12001
       k2=              loc(value%name)
       k4=              loc(value%na)
     if (k1==k2) print *,2002
     if (k3==k4) print *,2902
     print *,'sngg807p : pass'
     end program

