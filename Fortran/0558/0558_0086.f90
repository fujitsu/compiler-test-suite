Module m
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
PROCEDURE(mod) :: npfun

INTERFACE
FUNCTION qfun(dd1,dd2)
  INTEGER :: dd1,dd2,qfun
END FUNCTION
END INTERFACE

INTERFACE gnr
  PROCEDURE :: npfun
  PROCEDURE :: pfun
END INTERFACE

num1 = 12
num2 = 5

res = gnr(num1,num2)

IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION outfun(dd1,dd2,dd3)
  INTEGER :: dd1,dd2,dd3,outfun,npfun
  outfun = dd1 + dd2 + dd3
  RETURN
  ENTRY npfun(dd1,dd2)
  npfun = dd1 / dd2
  RETURN
END FUNCTION


