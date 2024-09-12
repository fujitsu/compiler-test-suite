MODULE mod1
IMPLICIT NONE

REAL :: num1,num2,res

INTERFACE 
REAL FUNCTION pfun(d1)
  REAL :: d1
END FUNCTION
END INTERFACE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(dim) :: npfun

INTERFACE gnr
  PROCEDURE pfun
  PROCEDURE :: npfun
END INTERFACE

num1 = 5.0
num2 = 7.0

res = gnr(num1,num2)

IF(res .EQ. 11.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

REAL FUNCTION pfun(d1)
REAL :: d1
  d1 = d1 * 5.0
  pfun = d1
END FUNCTION

REAL FUNCTION npfun(dd1,dd2)
    REAL :: dd1,dd2
    dd1 = dd1 * 2.0
    dd2 = dd2 * 3.0
    npfun = dd2 - dd1
END FUNCTION
