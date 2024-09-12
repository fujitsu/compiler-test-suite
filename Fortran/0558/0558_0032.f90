MODULE mod1
IMPLICIT NONE
REAL :: num1 = 5.0

INTERFACE
FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
END FUNCTION
END INTERFACE

PROCEDURE(extfun),private :: npfun
INTERFACE gnr
  PROCEDURE :: npfun
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
mn = fun(nfun)
print*,mn

CONTAINS
FUNCTION fun(dfun)
INTEGER :: fun
PROCEDURE(nfun) :: dfun
INTERFACE gnr
  PROCEDURE :: dfun
END INTERFACE
Integer::num2, res
num2 =10
res = gnr(num2,num1)
if(res .EQ. 17)then
 print*,'PASS'
else
 print*,'FAIL'
endif
fun = res
END FUNCTION
END PROGRAM

FUNCTION npfun(d1,d2)
INTEGER :: d1,npfun
REAL :: d2
d1 = d1 + 2
npfun = d1 + d2
END FUNCTION

