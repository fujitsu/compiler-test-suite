MODULE mod1
IMPLICIT NONE

INTERFACE
SUBROUTINE ext_sub(d1,d2)
REAL :: d1,d2,res
END SUBROUTINE
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: xx = 2.0,yy = 3.0

CALL ext_sub(xx,yy)

END PROGRAM

SUBROUTINE ext_sub(d1,d2)
USE mod1
PROCEDURE(dim) :: prc
 
INTERFACE gnr
  PROCEDURE prc
END INTERFACE

res = gnr(d1,d2)

IF(res .EQ. 5.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

FUNCTION outfun(ad1,bd1,cd1)
REAL :: ad1,cd1,bd1,outfun,prc
outfun = ad1 + bd1 - cd1
RETURN
ENTRY prc(ad1,bd1)
prc = ad1+bd1
RETURN
END FUNCTION


