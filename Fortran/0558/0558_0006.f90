MODULE mod1
IMPLICIT NONE

INTEGER :: num1,num2,res

CONTAINS
FUNCTION qfun(dd1,dd2)
  INTEGER :: dd1,dd2,qfun
  dd1 = dd1 * 2
  dd2 = dd2 * 3
  qfun = dd1 + dd2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(dim),POINTER :: intfun

INTERFACE gnr
  PROCEDURE :: intfun
  MODULE PROCEDURE qfun
END INTERFACE

num1 = 5
num2 = 7

intfun => dim

res = gnr(num1,num2)

IF(res .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

