MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4)  :: num1 = 12,num2 = 5,res
REAL(kind = 4)  :: rl = 8.0,dr1 = 1.0,dr2 = 3.0

INTERFACE
INTEGER FUNCTION extfun(dd1,dd2)
INTEGER(kind = 4)  :: dd1
REAL(kind = 4)  :: dd2
END FUNCTION
END INTERFACE
  
INTERFACE gnr
  PROCEDURE mfun
END INTERFACE

CONTAINS
SUBROUTINE modsub(dummy)
PROCEDURE(extfun) :: dummy
PROCEDURE(mod),POINTER :: ppfun

INTERFACE gnr
  PROCEDURE ppfun
  PROCEDURE dummy
END INTERFACE

ppfun => mod
res =  gnr(num1,num2)

IF(res .EQ. 2) THEN
  res = gnr(num1,rl)
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

REAL FUNCTION mfun(dd1,dd2)
REAL :: dd1,dd2
dd1 = dd1 + 2.0
dd2 = dd2 + 3.0
mfun = dd1 + dd2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: ff
CALL modsub(extfun)

IF(res .EQ. 20) THEN
  ff = gnr(dr1,dr2)
ELSE
  PRINT*,"ERROR"
END IF

IF(ff .EQ. 9.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

INTEGER FUNCTION extfun(dd1,dd2)
INTEGER :: dd1
REAL :: dd2
extfun = dd1 + INT(dd2)
END FUNCTION
