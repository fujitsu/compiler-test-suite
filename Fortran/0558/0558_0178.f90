MODULE mod1
IMPLICIT NONE

INTEGER :: num1,num2,res

INTERFACE
FUNCTION rfun(dd1,dd2,dd3)
  INTEGER :: dd1,dd2,dd3,rfun
END FUNCTION
FUNCTION qfun(dd1)
  INTEGER :: dd1,qfun
END FUNCTION
FUNCTION pfun(dd1,dd2)
  INTEGER :: dd1,dd2,pfun
END FUNCTION
END INTERFACE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTERFACE gnr
  PROCEDURE pfun
END INTERFACE

num1 = 5
num2 = 7

res = gnr(num1,num2)

IF(res .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION rfun(dd1,dd2,dd3)
INTEGER :: dd1,dd2,dd3,rfun,pfun,qfun
  rfun = dd1 + dd2 + dd3
  RETURN
  ENTRY qfun(dd1)
  qfun = dd1
  RETURN
  ENTRY pfun(dd1,dd2)
  dd1 = dd1 * 2
  dd2 = dd2 * 3
  pfun = dd1 + dd2
  RETURN
END FUNCTION
