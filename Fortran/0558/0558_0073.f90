MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num1
END TYPE
TYPE ty2
  TYPE(ty) :: nes
END TYPE

INTERFACE
FUNCTION qfun(dd1,dd2)
  IMPORT ty2
  TYPE(ty2) :: dd1,dd2,qfun
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION pfun(d1)
TYPE(ty) :: d1,pfun
  d1%num1 = d1%num1 * 5
  pfun = d1
END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty2) :: obj1,obj2,res

obj1%nes%num1 = 5
obj2%nes%num1 = 7

CALL sub(pfun)

IF(res%nes%num1 .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(pfun) :: dum
PROCEDURE(qfun) :: ppfun

INTERFACE gnr
  PROCEDURE :: dum
  PROCEDURE ppfun
END INTERFACE

res = gnr(obj1,obj2)

END SUBROUTINE

END PROGRAM

FUNCTION ppfun(dd1,dd2)
  USE mod1
  TYPE(ty2) :: dd1,dd2,ppfun
  dd1%nes%num1 = dd1%nes%num1 * 2
  dd2%nes%num1 = dd2%nes%num1 * 3
  ppfun%nes%num1 = dd1%nes%num1 + dd2%nes%num1
END FUNCTION


