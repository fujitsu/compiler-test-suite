PROGRAM main
IMPLICIT NONE

REAL :: xx = 2.0,yy = 3.0,res
PROCEDURE(dim),POINTER :: prc
 
INTERFACE gnr
  PROCEDURE prc
END INTERFACE

prc => dim
res = gnr(xx,yy)

IF(res .EQ. 0.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
