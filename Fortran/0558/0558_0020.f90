MODULE mod1
IMPLICIT NONE
type ty
integer::num1
end type

INTERFACE
FUNCTION pfun(dd1,dd2)
import ty
  TYPE(ty),Intent(IN) ::dd1 
  REAL,intent(IN) :: dd2
  Integer :: pfun
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION qfun(dd1,dd2)
  TYPE(ty),Intent(IN) ::dd1 
  INTEGER,intent(IN) :: dd2
  Integer :: qfun
  qfun = dd1%num1 / dd2
END Function
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(pfun) :: npfun

INTERFACE operator (/) 
  PROCEDURE :: npfun
  MODULE PROCEDURE qfun
END INTERFACE

Integer::res,num1
TYPE(ty)::obj
obj%num1 = 10
num1 = 2

res = obj  / num1

IF(res .EQ. 5) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

FUNCTION npfun(dd1,dd2)
use mod1
  TYPE(ty),Intent(IN) ::dd1 
  REAL,intent(IN) :: dd2
  Integer :: npfun
  npfun = dd1%num1 + dd2
END FUNCTION
