MODULE mod1
IMPLICIT NONE

INTEGER :: num1 = 5,num2 = 6,res

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
FUNCTION enfun(d1,d2,d3)
INTEGER :: d1,d2,d3,enfun,nfun
enfun = d1 + d2 + d3
RETURN
ENTRY nfun(d1,d2)
d1 = d1 * 2
d2 = d2 * 3
nfun = d1 + d2
RETURN
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
  PROCEDURE :: intfun
  PROCEDURE :: npfun
  PROCEDURE :: dfun
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
