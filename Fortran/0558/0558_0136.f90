MODULE mod1
IMPLICIT NONE

PROCEDURE(en_2),POINTER :: ptr

INTERFACE
INTEGER FUNCTION en_1(d1,d2,d3)
INTEGER :: d1,d2,d3
END FUNCTION
INTEGER FUNCTION en_2(d3)
INTEGER :: d3
END FUNCTION
END INTERFACE

END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE

PROCEDURE(dim) :: npfun

END MODULE


PROGRAM main
USE mod2
IMPLICIT NONE

INTEGER :: num = 2,res

ptr => en_2
CALL sub(ptr)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(en_2),POINTER :: dum

INTERFACE gnr
  FUNCTION ff(d1,d2,d3)
    INTEGER :: d1,d2
    REAL :: d3
  END FUNCTION
  PROCEDURE :: dum
  PROCEDURE npfun
END INTERFACE

dum => en_2
res = gnr(num)

IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE
END PROGRAM

INTEGER FUNCTION ss(dd)
INTEGER :: dd
ss = dd + 2
END FUNCTION

INTEGER FUNCTION en_1(d1,d2,d3)
INTEGER :: d1,d2,d3,en_2
en_1 = d1 + d2
RETURN
ENTRY en_2(d3)
en_2 = d3
RETURN
END FUNCTION

REAL FUNCTION npfun(d1,d2)
REAL :: d1,d2
npfun = d1 + d2
END FUNCTION
