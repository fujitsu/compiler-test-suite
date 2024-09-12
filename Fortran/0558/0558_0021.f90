Module Mod1
 implicit none
 type :: ty 
     Integer, dimension(4) :: a
  end type 
  interface gnr 
     module procedure sub
  end interface
  private ::sub 
contains
    subroutine sub(arg, arg1) 
    Integer :: res
    type(ty), intent(in) :: arg,arg1
    res = arg%a(1)*arg1%a(1) + arg%a(2)*arg1%a(2) &
              + arg%a(3)*arg1%a(3) + arg%a(4)*arg1%a(4)
    if(res .EQ. 400)then
    print*,"PASS"
    else
    print*,"FAIL"
    endif
  end subroutine 
end module

module m
  use Mod1 
  interface gnr 
     module procedure sub 
  end interface
  private :: sub 
contains
    subroutine sub(arg, arg1) 
    Integer :: res
    type(ty), intent(in) :: arg
    Integer, intent(in) :: arg1
    res = arg%a(1)*arg1 + arg%a(2)*arg1 &
              + arg%a(3)*arg1 + arg%a(4)*arg1
    if(res .EQ. 400)then
    print*,"PASS"
    else
    print*,"FAIL"
    endif
  end subroutine 
end module

PROGRAM main
use m
IMPLICIT NONE
type(ty) :: arg, arg1
arg%a = 10
arg1%a = 10
call gnr(arg,arg1)
END PROGRAM

