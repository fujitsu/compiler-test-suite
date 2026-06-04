MODULE mod1
IMPLICIT NONE

INTEGER :: num1,num2,res

INTERFACE 
SUBROUTINE extsub()
END SUBROUTINE
FUNCTION qfun(dd1,dd2)
  INTEGER :: dd1,dd2,qfun
END FUNCTION
END INTERFACE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

num1 = 5
num2 = 7

CALL extsub()


END PROGRAM

SUBROUTINE extsub()
USE mod1

PROCEDURE(dim),POINTER :: intfun

INTERFACE gnr
  PROCEDURE qfun
  PROCEDURE :: intfun
END INTERFACE

intfun => dim
res = gnr(num1,num2)

IF(res .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

FUNCTION qfun(dd1,dd2)
  INTEGER :: dd1,dd2,qfun
  dd1 = dd1 * 2
  dd2 = dd2 * 3
  qfun = dd1 + dd2
END FUNCTION

