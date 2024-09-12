MODULE mod1
IMPLICIT NONE

INTEGER :: num1,num2,res

INTERFACE 
FUNCTION qfun(dd1,dd2)
  INTEGER :: dd1,dd2,qfun
END FUNCTION
END INTERFACE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

num1 = 5
num2 = 7

CALL intsub(num1,num2,qfun)

IF(res .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
SUBROUTINE intsub(d1,d2,dfun)
INTEGER :: d1,d2
PROCEDURE(qfun) :: dfun
PROCEDURE(dim),POINTER :: intfun

INTERFACE gnr
  PROCEDURE dfun
  PROCEDURE :: intfun
END INTERFACE

intfun => dim
res = gnr(d1,d2)

END SUBROUTINE

END PROGRAM

FUNCTION qfun(dd1,dd2)
  INTEGER :: dd1,dd2,qfun
  dd1 = dd1 * 2
  dd2 = dd2 * 3
  qfun = dd1 + dd2
END FUNCTION

