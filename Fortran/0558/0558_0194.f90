PROGRAM main
IMPLICIT NONE

REAL :: xx = 2.0,yy = 3.0,res
PROCEDURE(dim) :: prc
 
INTERFACE gnr
  PROCEDURE prc
END INTERFACE

res = gnr(xx,yy)

IF(res .EQ. 5.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION outfun(ad1,bd1,cd1)
REAL :: ad1,cd1,bd1,outfun,prc
outfun = ad1 + bd1 - cd1
RETURN
ENTRY prc(ad1,bd1)
prc = ad1+bd1
RETURN
END FUNCTION

