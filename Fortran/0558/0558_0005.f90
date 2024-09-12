MODULE mod1
IMPLICIT NONE

INTEGER :: num1(5),num2(5)

INTERFACE
SUBROUTINE msub(dd1)
  INTEGER :: dd1(5)
END SUBROUTINE
END INTERFACE


CONTAINS
SUBROUTINE qsub(dd1,dd2)
  INTEGER :: dd1(5),dd2(5)
  dd1 = dd1 * 2
  dd2 = dd2 * 3
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(msub) :: npsub

INTERFACE gnr
  PROCEDURE :: npsub
  MODULE PROCEDURE qsub
END INTERFACE

num1 = 5
num2 = 7

CALL gnr(num1)

IF(ALL(num1(1:5) .EQ. 25)) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

SUBROUTINE npsub(dd1)
  INTEGER :: dd1(5)
  dd1 = dd1 * 5
END SUBROUTINE