MODULE mod1
IMPLICIT NONE
Integer ::status =0
REAL :: num1 = 5.0

INTERFACE
FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
END FUNCTION
END INTERFACE

PROCEDURE(extfun),private :: npfun
INTERFACE gnr
  Module PROCEDURE :: pfun 
  PROCEDURE :: npfun
END INTERFACE

CONTAINS
FUNCTION pfun(dd1,dd2)
  REAL :: dd1,dd2,pfun
  pfun = dd1 + dd2
END FUNCTION
END MODULE

FUNCTION npfun(d1,d2)
use mod1
INTEGER :: d1,npfun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
npfun = d1 + int(d2)
if(status .EQ. 0)then
status  = 1
npfun = gnr(d1,d2)
if(npfun .EQ. 23)then
 print*,'PASS'
else
 print*,'FAIL'
endif
else
endif

END FUNCTION

PROGRAM main
USE mod1
Integer::num,res
num = 10
res = npfun(num,num1)
print*,res
END PROGRAM

