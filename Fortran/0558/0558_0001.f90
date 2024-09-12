MODULE mod1
IMPLICIT NONE

REAL :: num1,num2,res

CONTAINS
FUNCTION qfun(dd1,dd2)
  REAL :: dd1,dd2,qfun
  dd1 = dd1 * 2.0
  dd2 = dd2 * 3.0
  qfun = dd1 + dd2
END FUNCTION
FUNCTION pfun(d1)
REAL :: d1,pfun
  d1 = d1 * 5.0
  pfun = d1
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTERFACE gnr
  MODULE PROCEDURE :: qfun,pfun
END INTERFACE

num1 = 5.0
num2 = 7.0

res = gnr(num1,num2)
res = res  + gnr(num1)

IF(res .EQ. 81.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF


END PROGRAM

