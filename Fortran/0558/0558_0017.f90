MODULE mod1
IMPLICIT NONE
type ty
Integer:: num2
end type
INTEGER :: num1,res

CONTAINS
FUNCTION qfun(dd1,dd2)
  TYPE(ty),Intent(IN) ::dd1 
  INTEGER,intent(IN) :: dd2
  Integer :: qfun
  qfun = dd1%num2 + dd2
END FUNCTION
FUNCTION pfun(dd1,dd2)
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  Integer :: pfun
  pfun = dd1 + dd2%num2 
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTERFACE OPERATOR(+)
  PROCEDURE :: pfun
  MODULE PROCEDURE qfun
END INTERFACE

TYPE(ty)::obj
obj%num2 = 10
num1 = 5

res = obj  + num1

IF(res .EQ. 15) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

