MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: xx = 12,yy = 5,res

CONTAINS
SUBROUTINE mod_sub()
PROCEDURE(mod),POINTER :: prc
INTERFACE gnr
  PROCEDURE :: prc
END INTERFACE
prc => mod
res = gnr(xx,yy)
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CALL mod_sub()

IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
