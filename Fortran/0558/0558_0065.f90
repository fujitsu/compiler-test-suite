MODULE mod1
IMPLICIT NONE

REAL :: num1 = 5.0,num2 = 6.0,res

INTERFACE
FUNCTION mfun(dd1,dd2)
  REAL :: dd1,dd2,mfun
END FUNCTION
END INTERFACE

END MODULE


MODULE mod2
USE mod1
IMPLICIT NONE

INTERFACE
FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
END FUNCTION
END INTERFACE

END MODULE


PROGRAM main
USE mod2
IMPLICIT NONE

PROCEDURE(extfun) :: eefun
PROCEDURE(mod),POINTER :: infun
PROCEDURE(mfun),POINTER :: ppfun

INTERFACE gnr
  PROCEDURE infun
  PROCEDURE :: ppfun
  PROCEDURE eefun
END INTERFACE

infun => mod
ppfun => mfun

res = gnr(num1,num2)

IF(res .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION eefun(d1,d2)
INTEGER :: d1,eefun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
eefun = d1 + int(d2)
END FUNCTION

FUNCTION mfun(dd1,dd2)
  REAL :: dd1,dd2,mfun
  dd1 = dd1 * 2.0
  dd2 = dd2 * 3.0
  mfun = dd1 + dd2
END FUNCTION
