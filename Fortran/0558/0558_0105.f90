MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: num1 = 12,num2 = 5,res
REAL(kind = 4) :: rl = 8.0

INTERFACE
INTEGER FUNCTION extfun(dd1,dd2)
INTEGER :: dd1
REAL :: dd2
END FUNCTION
END INTERFACE

CONTAINS
SUBROUTINE modsub(dummy)
PROCEDURE(extfun) :: dummy
PROCEDURE(mod),POINTER :: ppfun

INTERFACE gnr
  PROCEDURE ppfun
  PROCEDURE dummy
END INTERFACE

INTEGER :: dd1
REAL :: dd2
ppfun => mod
res =  gnr(num1,num2)
IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

dd1 = 2
dd2 = 3.0
res = gnr(dd1,dd2)
IF(res .EQ. 5) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CALL modsub(extfun)

END PROGRAM

INTEGER FUNCTION extfun(dd1,dd2)
INTEGER :: dd1
REAL :: dd2
extfun = dd1 + INT(dd2)
END FUNCTION
