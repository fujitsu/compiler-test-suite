module mod1
type ty
integer::num
end type
end module

PROGRAM main
use mod1
IMPLICIT NONE

INTERFACE
FUNCTION qfun(dd1,dd2)
import ty
  TYPE(ty),Intent(IN) ::dd1 
  INTEGER,intent(IN) :: dd2
  Integer :: qfun
END FUNCTION
FUNCTION pfun(dd1,dd2)
import ty
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  Integer :: pfun
END FUNCTION

END INTERFACE

INTERFACE operator(*)
  PROCEDURE :: qfun
  PROCEDURE :: pfun
END INTERFACE

Integer::res,num1
type(ty)::obj
obj%num = 2
num1 = 2
res = num1 * obj

IF(res .EQ. 4) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION qfun(dd1,dd2)
use mod1
  TYPE(ty),Intent(IN) ::dd1 
  INTEGER,intent(IN) :: dd2
  Integer :: qfun
  qfun = dd1%num * dd2
END FUNCTION

FUNCTION pfun(dd1,dd2)
use mod1
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  Integer :: pfun
  pfun = dd1 * dd2%num
END FUNCTION

