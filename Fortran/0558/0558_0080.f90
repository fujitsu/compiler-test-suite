MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: num1 = 12,num2 = 5,res

CONTAINS
REAL FUNCTION pfun(dd1,dd2)
  REAL :: dd1,dd2
  dd1 = dd1 * 5.0
  dd2 = dd2 + 3.0
  pfun = dd1 + dd2
END FUNCTION

INTEGER FUNCTION mfun()
PROCEDURE(mod),POINTER :: exfun

INTERFACE gnr
  PROCEDURE pfun
  PROCEDURE exfun
END INTERFACE

exfun => mod
mfun = gnr(num1,num2)
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

res = mfun()

IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

