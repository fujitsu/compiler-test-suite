     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value, v2)
         class(base), allocatable, intent(inout) :: var,v2
         class(base), intent(in) :: value
         allocate(var,v2, source=value)
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var,v2
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3
     allocate(value)
     allocate(value%name,source='ok')
     call s1(var, value,v2) 
     k=0
     select type(var)
     type is(ext)
       var%name(:)='11'
       k1=loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     k=0
     select type(v2)
     type is(ext)
       if (v2%name(:)/='ok') print *,6001
       k3=loc(v2%name)
       k=1
     end select
     if (k/=1) print *,1602
     if (k1==k3) print *,2602
     print *,'sngg784p : pass'
     end 

