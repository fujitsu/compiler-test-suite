     module mod
       type z
          integer(8)::z1
       end type
       type :: base
       end type base
       type, extends(base) :: ext
          class(z),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(value%name,source=z(1))
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var%name=z(11)
       k1=loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name%z1/=1) print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     print *,'sngg197p : pass'
     end program

