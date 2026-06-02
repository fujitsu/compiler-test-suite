Module mod1
 implicit none
type :: ty1 
  Integer::a
end type 
type :: ty 
  Integer::a(2)
end type 

Interface 
subroutine sub(arg,arg1) 
Import ty
type(ty),intent(out)::arg
integer,intent(in)::arg1
end subroutine
end interface

INTERFACE Assignment(=) 
  PROCEDURE :: sub,sub1
END INTERFACE
private ::sub1 

contains
subroutine sub1(arg1, arg) 
 type(ty1), intent(out) :: arg1
 type(ty), intent(in) :: arg
  arg1%a = arg%a(1)*arg%a(2) 
  end subroutine 
end module

PROGRAM main
use mod1
IMPLICIT NONE

type(ty) :: arg1
type(ty1) :: arg
arg1%a(1) = 10
arg1%a(2) = 20
arg = arg1

IF(arg%a .EQ. 200) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

subroutine sub(arg,arg1)
use mod1
 type(ty),intent(out)::arg
 integer,intent(in)::arg1
 arg%a = arg1 
end subroutine 

