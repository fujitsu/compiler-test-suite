MODULE mod1
IMPLICIT NONE

INTEGER :: num1 = 5,num2 = 7

CONTAINS
SUBROUTINE psub(dd1,dd2)
  REAL :: dd1,dd2
  dd1 = dd1 * 5.0
  dd2 = dd2 + 3.0
END SUBROUTINE

SUBROUTINE qsub(dd1,dd2)
  INTEGER :: dd1,dd2
  dd1 = dd1 * 2
  dd2 = dd2 * 3
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res

res = mfun(qsub)

IF(res .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
INTEGER FUNCTION mfun(dsub)
PROCEDURE(qsub) :: dsub

INTERFACE gnr
  MODULE PROCEDURE psub
  PROCEDURE dsub
END INTERFACE

CALL gnr(num1,num2)
mfun = num1 + num2
END FUNCTION

END PROGRAM

