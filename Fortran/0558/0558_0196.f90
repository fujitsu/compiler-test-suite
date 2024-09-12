PROGRAM main
IMPLICIT NONE

INTEGER(kind = 4) :: xx = 12,yy = 5,res

res = int_fun()

IF(res .EQ. 17) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
INTEGER FUNCTION int_fun()
PROCEDURE(mod) :: prc
INTERFACE gnr
  PROCEDURE prc
END INTERFACE
int_fun = gnr(xx,yy)
END FUNCTION

END PROGRAM

FUNCTION prc(ad1,bd1)
INTEGER :: ad1,bd1,prc
prc = ad1+bd1
END FUNCTION
