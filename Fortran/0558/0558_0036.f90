MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: num1,num2,res
PROCEDURE(mod),POINTER :: ppfun
INTERFACE gnr
  PROCEDURE ppfun
END INTERFACE

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

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(pfun) :: dum

INTERFACE gnr
  PROCEDURE :: dum
END INTERFACE

ppfun => mod
res = gnr(num1,num2)
IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END SUBROUTINE
END PROGRAM

