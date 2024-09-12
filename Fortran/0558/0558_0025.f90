Module mod1
 implicit none
type :: ty 
  Integer::a(2)
end type 
type :: ty1 
  Integer::a
end type 

Interface 
subroutine sub(arg,arg1) 
Import ty
type(ty),intent(out)::arg
integer,intent(in)::arg1
end subroutine
subroutine sub1(arg1, arg) 
Import ty
Import ty1
 type(ty1), intent(out) :: arg1
 type(ty), intent(in) :: arg
end subroutine 
end interface

Procedure(sub),private::nondmy
INTERFACE Assignment(=) 
  PROCEDURE :: sub1,nondmy
END INTERFACE
Private::sub1
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

subroutine nondmy(arg,arg1)
use mod1
 type(ty),intent(out)::arg
 integer,intent(in)::arg1
 arg%a = arg1 
end subroutine 

subroutine sub1(arg1, arg)
use mod1 
 type(ty1), intent(out) :: arg1
 type(ty), intent(in) :: arg
  arg1%a = arg%a(1)*arg%a(2) 
end subroutine 

