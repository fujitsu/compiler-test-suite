MODULE mod1
IMPLICIT NONE

PUBLIC :: msub

CONTAINS
SUBROUTINE msub(dd1)
  INTEGER :: dd1
  dd1 = 2
END SUBROUTINE

END MODULE

MODULE mod2
USE mod1, pp => msub
IMPLICIT NONE

INTERFACE gnr
  MODULE PROCEDURE msub
END INTERFACE

PRIVATE :: msub

CONTAINS
SUBROUTINE msub(dd1)
  REAL :: dd1
  dd1 = 5.0
END SUBROUTINE

END MODULE


PROGRAM main
USE mod2
IMPLICIT NONE

REAL :: kk

CALL gnr(kk)

IF(kk .EQ. 5.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
