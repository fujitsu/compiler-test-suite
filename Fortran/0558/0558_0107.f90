MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: num,inc = 5,res
REAL(kind = 4)  :: rl

PROCEDURE(mod),POINTER :: ppfun

INTERFACE gnr  
  PROCEDURE mfun
END INTERFACE
INTERFACE gnr
  PROCEDURE ppfun
END INTERFACE

CONTAINS
SUBROUTINE modsub(dd1,dd2)
INTEGER(kind = 4)  :: dd1
REAL(kind = 4)  :: dd2

ppfun => mod
res =  gnr(dd1,dd2)

IF(dd1 .EQ. 14 .AND. dd2 .EQ. 11.0 .AND. res .EQ. 4) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR",dd1,dd2,res
END IF

END SUBROUTINE

INTEGER FUNCTION mfun(dd1,dd2)
INTEGER(kind = 4)  :: dd1
REAL(kind = 4)  :: dd2
dd1 = dd1 + 2
dd2 = dd2 + 3.0
mfun = gnr(dd1,inc)
END FUNCTION

END MODULE


PROGRAM main
use mod1

num = 12
rl = 8.0

CALL modsub(num,rl)

END PROGRAM
