MODULE mod1
IMPLICIT NONE

PROCEDURE(ss),POINTER :: ptr

INTERFACE gnr 
  PROCEDURE :: msub
END INTERFACE

PRIVATE :: msub

CONTAINS
SUBROUTINE msub(d1)
REAL :: d1
d1 = d1 * 4
END SUBROUTINE

SUBROUTINE ss(dd)
INTEGER :: dd
dd = dd + 2
END SUBROUTINE

SUBROUTINE en_1(d1,d2,d3,d4)
  INTEGER :: d1,d2
  REAL :: d3,d4
  d1 = d1 + d2
  RETURN
  ENTRY en_2(d3,d4)
  d3 = d3 + d4
  RETURN
END SUBROUTINE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: num = 2
REAL :: r1 = 3.0,r2 = 4.0

ptr => ss
CALL sub(ptr)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(ss),POINTER :: dum

INTERFACE gnr
  PROCEDURE :: dum
  MODULE PROCEDURE en_2
END INTERFACE

dum => ss
CALL gnr(num)

IF(num .EQ. 4) THEN
  CALL gnr(r1,r2) 
ELSE
  PRINT*,"ERROR"
END IF

IF(r1 .EQ. 7.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

END PROGRAM
