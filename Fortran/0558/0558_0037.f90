PROGRAM main
IMPLICIT NONE

REAL :: num1,num2,res

INTERFACE
FUNCTION qfun(dd1,dd2)
  REAL :: dd1,dd2,qfun
END FUNCTION
FUNCTION pfun(d1)
REAL :: d1,pfun
END FUNCTION

END INTERFACE

INTERFACE gnr
  PROCEDURE :: qfun
  PROCEDURE :: pfun
END INTERFACE

num1 = 5.0
num2 = 7.0

res = gnr(num1,num2)

IF(res .EQ. 31.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF


END PROGRAM

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

