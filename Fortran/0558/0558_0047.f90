MODULE mod1
IMPLICIT NONE

REAL :: num1 = 5.0,num2 = 7.0,res

INTERFACE
FUNCTION rfun(dd1,dd2,dd3)
  REAL :: dd1,dd2,dd3,rfun
END FUNCTION
FUNCTION qfun (dd1,dd2)
  REAL :: dd1,dd2,qfun
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION pfun(d1)
REAL :: d1,pfun
  d1 = d1 * 5.0
  pfun = d1
END FUNCTION

SUBROUTINE sub(ddum,cdum)
PROCEDURE(pfun) :: ddum
PROCEDURE(qfun) :: cdum

INTERFACE gnr
  PROCEDURE ddum
  PROCEDURE :: cdum
END INTERFACE

res = gnr(num1,num2)

END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CALL sub(pfun,qfun)

IF(res .EQ. 31.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION rfun(dd1,dd2,dd3)
  REAL :: dd1,dd2,dd3,qfun,rfun
  rfun = dd1 + dd2 + dd3
  RETURN
  ENTRY qfun(dd1,dd2)
  dd1 = dd1 * 2.0
  dd2 = dd2 * 3.0
  qfun = dd1 + dd2
  RETURN
END FUNCTION

