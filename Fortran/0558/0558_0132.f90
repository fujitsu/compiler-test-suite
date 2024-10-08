MODULE mod1
IMPLICIT NONE

PROCEDURE(ss),POINTER :: ptr

INTERFACE
SUBROUTINE ss(dd)
INTEGER :: dd
END SUBROUTINE
SUBROUTINE su(d1,d2,d3)
INTEGER :: d1,d2,d3
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE s2(d1,d2)
  REAL :: d1,d2
  d1 = d1 * d2
END SUBROUTINE
END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE

PROCEDURE(s2),POINTER :: ptr2
PROCEDURE(su) :: npsub

END MODULE


PROGRAM main
USE mod2
IMPLICIT NONE

INTEGER :: num = 2

ptr => ss
CALL sub(ptr)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(ss),POINTER :: dum

INTERFACE gnr
  PROCEDURE :: npsub
  PROCEDURE  dum
  PROCEDURE :: ptr2
END INTERFACE

ptr2 => s2
dum => ss
CALL gnr(num)

IF(num .EQ. 4) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE
END PROGRAM

SUBROUTINE ss(dd)
INTEGER :: dd
dd = dd + 2
END SUBROUTINE

SUBROUTINE npsub(d1,d2,d3)
INTEGER :: d1,d2,d3
d1 = d2 + d3
END SUBROUTINE


