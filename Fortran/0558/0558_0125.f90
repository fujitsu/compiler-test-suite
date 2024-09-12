MODULE mod1
IMPLICIT NONE

INTERFACE gnr
  MODULE PROCEDURE msub
END INTERFACE

PUBLIC :: msub
PUBLIC :: mfun

CONTAINS
SUBROUTINE msub(dd1)
  INTEGER :: dd1
  dd1 = 2
END SUBROUTINE

INTEGER FUNCTION mfun(dd1)
  INTEGER :: dd1
  dd1 = 2
  mfun = dd1
END FUNCTION

END MODULE

MODULE mod2
USE mod1,pp => msub
IMPLICIT NONE

PUBLIC :: msub

CONTAINS
SUBROUTINE msub(dd1)
  REAL :: dd1
  dd1 = 5.0
END SUBROUTINE

END MODULE


PROGRAM main
USE mod2,ONLY : msub,pp => msub
IMPLICIT NONE

REAL :: rr

INTERFACE gnr
  MODULE PROCEDURE pp
END INTERFACE

CALL gnr(rr)

IF(rr .EQ. 5.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM