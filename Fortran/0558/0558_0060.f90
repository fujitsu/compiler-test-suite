MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num1
END TYPE

CONTAINS
FUNCTION pfun(d1,d2)
TYPE(ty) :: d1,pfun
Integer::d2
  d1%num1 = d1%num1 * 5 + d2 
  pfun = d1 
END FUNCTION
FUNCTION qfun(dd1)
  TYPE(ty) :: dd1,qfun
  dd1%num1 = dd1%num1 * 2
  qfun%num1 = dd1%num1
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj1,res
obj1%num1 = 5

CALL sub(pfun)

IF(res%num1 .EQ. 10) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(pfun) :: dum
PROCEDURE(qfun),POINTER :: ppfun

INTERFACE gnr
  PROCEDURE :: dum
  PROCEDURE ppfun
END INTERFACE

ppfun => qfun
res = gnr(obj1)

END SUBROUTINE

END PROGRAM

