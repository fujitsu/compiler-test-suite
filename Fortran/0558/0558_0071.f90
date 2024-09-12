PROGRAM main
IMPLICIT NONE

Interface
FUNCTION pfun(d1)
INTEGER :: d1,pfun
END FUNCTION
end interface
REAL :: num1,num2,res
PROCEDURE(qfun) :: npfun

INTERFACE
FUNCTION qfun(dd1,dd2)
  REAL :: dd1,dd2,qfun
END FUNCTION
END INTERFACE

INTERFACE gnr
  PROCEDURE :: npfun
  PROCEDURE :: pfun
END INTERFACE

num1 = 5.0
num2 = 7.0

res = gnr(num1,num2)

IF(res .EQ. 31.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

FUNCTION npfun(dd1,dd2)
  REAL :: dd1,dd2,npfun
  dd1 = dd1 * 2.0
  dd2 = dd2 * 3.0
  npfun = dd1 + dd2
END FUNCTION

FUNCTION pfun(d1)
INTEGER :: d1,pfun
  d1 = d1 * 5
  pfun = d1
END FUNCTION
