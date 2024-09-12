MODULE mod1
IMPLICIT NONE
REAL :: num1 = 5.0,num2 = 6.0,res

INTERFACE
FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
END FUNCTION
END INTERFACE

procedure(pfun),private,pointer::ptr
PROCEDURE(extfun),private :: npfun
INTERFACE gnr
  PROCEDURE :: ptr
  PROCEDURE :: npfun
END INTERFACE

CONTAINS
FUNCTION nfun(d1,d2)
INTEGER :: d1,d2,nfun
d1 = d1 + d2
d2 = 2
nfun = d1 + d2
END FUNCTION
FUNCTION pfun(dd1,dd2)
  REAL :: dd1,dd2,pfun
  pfun = dd1 + dd2
END FUNCTION
subroutine s()
ptr=>pfun
end subroutine
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

real :: mn
mn = fun(nfun)
print*,mn

CONTAINS
real FUNCTION fun(dfun)
PROCEDURE(nfun) :: dfun
INTERFACE gnr
  PROCEDURE :: dfun
END INTERFACE
call s()
res = gnr(num1,num2)
if(res .EQ. 11.0)then
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
d2 = d2 + 2.0
npfun = d1 + int(d2)
END FUNCTION

