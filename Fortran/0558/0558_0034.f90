Module m

PROCEDURE(mod),private :: npfun
INTERFACE gnr
  PROCEDURE :: npfun
  PROCEDURE :: pfun
END INTERFACE

CONTAINS
FUNCTION pfun(d1)
INTEGER :: d1,pfun
  d1 = d1 * 5
  pfun = d1
END FUNCTION
end module

PROGRAM main
use m
IMPLICIT NONE

INTEGER(kind = 4) :: num1,num2,res
num1 = 10
num2 = 2

res = gnr(num1,num2)
print*,res
IF(res .EQ. 12) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

FUNCTION npfun(dd1,dd2)
  INTEGER :: dd1,dd2,npfun
  npfun = dd1 + dd2
END FUNCTION


