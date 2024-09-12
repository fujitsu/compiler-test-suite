MODULE mod1
IMPLICIT NONE

REAL :: num1 = 5.0,num2 = 6.0,res

CONTAINS
FUNCTION nfun(d1,d2)
INTEGER :: d1,nfun
real::d2
d1 = d1 + d2
d2 = 2
nfun = d1 + d2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: mn

PROCEDURE(mod),POINTER :: ppfun
PROCEDURE(dim) :: npfun

ppfun => mod
mn = fun(nfun)

IF(mn .EQ. 28.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
FUNCTION fun(dfun)
INTEGER :: fun
PROCEDURE(nfun) :: dfun

INTERFACE gnr
  PROCEDURE ppfun
  PROCEDURE dfun
  PROCEDURE npfun
END INTERFACE

res = gnr(num1,num2)
fun = res
END FUNCTION

END PROGRAM

FUNCTION npfun(dd1,dd2)
  REAL :: dd1,dd2,npfun
  dd1 = dd1 * 2.0
  dd2 = dd2 * 3.0
  npfun = dd1 + dd2
END FUNCTION
