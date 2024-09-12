MODULE mod1
IMPLICIT NONE

REAL :: num1 = 5.0,num2 = 6.0,res

INTERFACE
FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
END FUNCTION
FUNCTION intfun(dd1,dd2)
  REAL :: dd1,dd2,intfun
END FUNCTION
END INTERFACE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(extfun) :: eefun
PROCEDURE(mod),POINTER :: infun

infun => mod

CALL sub(intfun)

IF(res .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(intfun) :: dum

INTERFACE gnr
  PROCEDURE eefun
  PROCEDURE :: dum
  PROCEDURE infun
END INTERFACE

res = gnr(num1,num2)

END SUBROUTINE
END PROGRAM

FUNCTION eefun(d1,d2)
INTEGER :: d1,eefun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
eefun = d1 + int(d2)
END FUNCTION

FUNCTION intfun(dd1,dd2)
  REAL :: dd1,dd2,intfun
  dd1 = dd1 * 2.0
  dd2 = dd2 * 3.0
  intfun = dd1 + dd2
END FUNCTION
