PROGRAM main
IMPLICIT NONE

INTEGER(kind = 4) :: xx = 12,yy = 5,res

res = int_fun()

IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
INTEGER FUNCTION int_fun()
PROCEDURE(mod),POINTER :: prc
INTERFACE gnr
  PROCEDURE prc
END INTERFACE
prc => mod
int_fun = gnr(xx,yy)
END FUNCTION

END PROGRAM
