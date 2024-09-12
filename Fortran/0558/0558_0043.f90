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

PROCEDURE(extfun) :: npfun

mn = fun(nfun)

IF(mn .EQ. 28) THEN
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
  PROCEDURE intfun
  PROCEDURE npfun
END INTERFACE

res = gnr(num1,num2)
fun = res
END FUNCTION

END PROGRAM

FUNCTION npfun(d1,d2)
INTEGER :: d1,npfun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
npfun = d1 + int(d2)
END FUNCTION

FUNCTION intfun(dd1,dd2)
  REAL :: dd1,dd2,intfun
  dd1 = dd1 * 2.0
  dd2 = dd2 * 3.0
  intfun = dd1 + dd2
END FUNCTION
