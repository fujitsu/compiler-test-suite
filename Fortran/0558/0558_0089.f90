MODULE mod1
IMPLICIT NONE

REAL :: num1,num2,res

INTERFACE
FUNCTION ffun(cd1,cd2)
  CHARACTER :: cd1,cd2,ffun(2)
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION qfun(dd1,dd2)
  INTEGER :: dd1,dd2,qfun
  dd1 = dd1 * 2
  dd2 = dd2 * 3
  qfun = dd1 + dd2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(dim),POINTER :: ppfun
PROCEDURE(ffun),POINTER :: cpfun

INTERFACE gnr
 PROCEDURE ppfun
 PROCEDURE cpfun
END INTERFACE

num1 = 3.0
num2 = 2.0
ppfun => dim
cpfun => ffun

res = gnr(num1,num2)

IF(res .EQ. 1.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION ffun(cd1,cd2)
  CHARACTER :: cd1,cd2,ffun(2)
  cd1 = 'a'
  cd2 = 'b'
  ffun = 'ab'
END FUNCTION
