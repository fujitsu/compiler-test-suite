MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: num1,num2,res

CONTAINS
FUNCTION pfun(d1)
INTEGER :: d1,pfun
  d1 = d1 * 5
  pfun = d1
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

num1 = 12
num2 = 5

CALL sub(pfun)

IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(pfun) :: dum
PROCEDURE(mod),POINTER :: ppfun

INTERFACE gnr
  PROCEDURE :: dum
  PROCEDURE ppfun
END INTERFACE

ppfun => mod
res = gnr(num1,num2)

END SUBROUTINE

END PROGRAM

