MODULE mod1
IMPLICIT NONE

PROCEDURE(ss),POINTER :: ptr

CONTAINS
SUBROUTINE ss(dd)
INTEGER :: dd
dd = dd + 2
PRINT*,dd
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: num = 2

ptr => ss
CALL sub(ptr)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(ss),POINTER :: dum

INTERFACE gnr
  PROCEDURE :: dum
END INTERFACE

dum => ss
CALL gnr(num)
END SUBROUTINE

END PROGRAM