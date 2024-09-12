MODULE mod1
IMPLICIT NONE

REAL :: res

INTERFACE
FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
END FUNCTION
FUNCTION intfun()
  REAL :: intfun
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION nfun(d1,d2)
INTEGER :: d1,d2,nfun
d1 = d1 + d2
d2 = 2
nfun = d1 + d2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: mn

PROCEDURE(nfun),POINTER :: ppfun
PROCEDURE(extfun) :: epfun
PROCEDURE(intfun) :: npfun

ppfun => nfun
mn = fun(nfun)

IF(mn .EQ. 12) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
FUNCTION fun(dfun)
INTEGER :: fun
PROCEDURE(nfun) :: dfun

INTERFACE gnr
  PROCEDURE dfun
  PROCEDURE :: npfun
  PROCEDURE epfun
END INTERFACE

res = gnr()
fun = res
END FUNCTION

END PROGRAM

FUNCTION epfun(d1,d2)
INTEGER :: d1,epfun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
epfun = d1 + int(d2)
END FUNCTION

FUNCTION npfun()
  REAL :: npfun
  npfun = 12
END FUNCTION
