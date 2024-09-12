MODULE mod1
IMPLICIT NONE

REAL :: num1 = 3.0,num2 = 2.0,res

CONTAINS
FUNCTION intfun(d1,d2)
INTEGER :: d1,d2,intfun
d1 = d1 + d2
d2 = 2
intfun = d1 + d2
END FUNCTION
END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE

CONTAINS
SUBROUTINE sub()
PROCEDURE(dim),POINTER :: ppfun

INTERFACE gnr
  FUNCTION extfun(d1,d2)
    INTEGER :: d1,extfun
    REAL :: d2
  END FUNCTION
  MODULE PROCEDURE :: intfun
  PROCEDURE :: ppfun
END INTERFACE

ppfun => dim
res = gnr(num1,num2)

END SUBROUTINE
END MODULE

PROGRAM main
USE mod2
IMPLICIT NONE

CALL sub()

IF(res .EQ. 1.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
extfun = d1 + int(d2)
END FUNCTION
