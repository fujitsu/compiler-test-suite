MODULE mod1
IMPLICIT NONE

INTEGER :: num

CONTAINS
SUBROUTINE msub(dd1)
  INTEGER :: dd1
  dd1 = dd1 * 2
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

num = 14
CALL int_sub(msub)

IF(num .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS

SUBROUTINE int_sub(dum_sub)
  PROCEDURE(msub) :: dum_sub
  INTERFACE gnr
    PROCEDURE dum_sub
  END INTERFACE
  CALL gnr(num)
END SUBROUTINE

END PROGRAM
