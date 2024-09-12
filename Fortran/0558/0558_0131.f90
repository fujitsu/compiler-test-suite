MODULE mod1
IMPLICIT NONE

INTEGER :: num = 2
PROCEDURE(ss),POINTER :: ptr
PROCEDURE(dim),POINTER :: ptr2

CONTAINS
INTEGER FUNCTION ss(dd)
INTEGER :: dd
dd = dd + 2
ss = dd
END FUNCTION
END MODULE


MODULE mod2
USE mod1
IMPLICIT NONE

CONTAINS
SUBROUTINE sub(dum)
INTEGER :: res
PROCEDURE(ss),POINTER :: dum

INTERFACE gnr
  PROCEDURE :: ptr2
  REAL FUNCTION s2(d1,d2,d3)
    REAL :: d1,d2,d3
  END FUNCTION
  PROCEDURE :: dum
END INTERFACE

ptr2 => dim
dum => ss
res = gnr(num)

IF(res .EQ. 4) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE
END MODULE

PROGRAM main
USE mod2
IMPLICIT NONE

ptr => ss
CALL sub(ptr)

END PROGRAM