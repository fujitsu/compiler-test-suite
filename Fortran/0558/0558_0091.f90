MODULE mod1
IMPLICIT NONE

REAL :: num1,num2,res

INTERFACE
REAL FUNCTION extfun(d1,d2)
INTEGER :: d1
REAL :: d2
END FUNCTION
END INTERFACE

CONTAINS
INTEGER FUNCTION mfun(d1,d2)
INTEGER :: d1,d2
d1 = d1 + d2
d2 = 2
mfun = d1 + d2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(dim) :: npfun

INTERFACE gnr
  MODULE PROCEDURE mfun
  PROCEDURE extfun
  PROCEDURE npfun
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

REAL FUNCTION npfun(d1,d2)
  REAL :: d1,d2
  d1 = d1 * 2.0
  d2 = d2 * 3.0
  npfun = d1 + d2
END FUNCTION

REAL FUNCTION extfun(d1,d2)
INTEGER :: d1
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
extfun = d1 + int(d2)
END FUNCTION
