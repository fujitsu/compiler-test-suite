MODULE mod1
IMPLICIT NONE

INTEGER :: num

INTERFACE
SUBROUTINE msub(dd1)
INTEGER :: dd1
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE mod_sub(dd1)
INTEGER :: dd1
PROCEDURE(msub),POINTER :: prc
INTERFACE gnr
  PROCEDURE :: prc
END INTERFACE
  prc => msub
  CALL gnr(dd1)
END SUBROUTINE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

num = 14
CALL mod_sub(num)

END PROGRAM

SUBROUTINE msub(dd1)
  INTEGER :: dd1
  dd1 = dd1 + 2
  IF(dd1 .EQ. 16) THEN
    PRINT*,"PASS"
  ELSE
    PRINT*,"ERROR"
  END IF
END SUBROUTINE