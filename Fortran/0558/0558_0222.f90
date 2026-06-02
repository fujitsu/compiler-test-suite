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

CALL extsub()


END PROGRAM

SUBROUTINE extsub()
USE mod1

PROCEDURE(dim),POINTER :: intfun
PROCEDURE(qfun) :: npfun

INTERFACE gnr
  PROCEDURE npfun
  PROCEDURE :: intfun
END INTERFACE

num1 = 2
num2 = 4
intfun => dim
res = gnr(num1,num2)
IF(res .EQ. 16) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

FUNCTION npfun(dd1,dd2)
  INTEGER :: dd1,dd2,npfun
  dd1 = dd1 * 2
  dd2 = dd2 * 3
  npfun = dd1 + dd2
END FUNCTION

