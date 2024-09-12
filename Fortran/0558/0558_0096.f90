MODULE mod1
IMPLICIT NONE
real:: res

CONTAINS
SUBROUTINE modsub(dd1,dd2)
INTEGER(kind = 4) :: dd1
REAL(kind = 4) :: dd2

INTERFACE gnr
  PROCEDURE mfun
END INTERFACE

res =  gnr(dd1,dd2)
IF(res .EQ. 4.00) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

INTEGER FUNCTION mfun(dd1,dd2)
INTEGER(kind = 4) :: dd1,d2
REAL(kind = 4) :: dd2
PROCEDURE(mod),POINTER :: ppfun
INTERFACE gnr
  PROCEDURE ppfun
END INTERFACE
ppfun => mod
dd1 = dd1 + 2
d2 = int(dd2 + 2)
mfun = gnr(dd1,d2)
IF(mfun .EQ. 4) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: num
REAL(kind = 4) :: rl
num = 12
rl = 8.0

CALL modsub(num,rl)

END PROGRAM
