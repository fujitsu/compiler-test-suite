MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: num1 = 5.0
END TYPE

CONTAINS
FUNCTION mfun(dd1,dd2)
  TYPE(ty) :: dd1,dd2,mfun
  dd1%num1 = dd1%num1 * 2.0
  dd2%num1 = dd2%num1 * 3.0
  mfun%num1 = dd1%num1 + dd2%num1
END FUNCTION

END MODULE


MODULE mod2
USE mod1
IMPLICIT NONE

CONTAINS
FUNCTION intfun(d1,d2)
INTEGER :: d1,d2,intfun
d1 = d1 + d2
d2 = 2
intfun = d1 + d2
END FUNCTION

END MODULE

MODULE mod3
USE mod2
IMPLICIT NONE

CONTAINS
SUBROUTINE sub(dd1,dd2)
TYPE(ty) :: dd1,dd2,res
INTERFACE gnr
  FUNCTION extfun(d1,d2)
    IMPORT ty
    TYPE(ty) :: d1,extfun
    REAL :: d2
  END FUNCTION
  MODULE PROCEDURE  mfun,intfun
END INTERFACE

res = gnr(dd1,dd2)

IF(res%num1 .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

END MODULE


PROGRAM main
USE mod3
IMPLICIT NONE

TYPE(ty) :: obj1,obj2
obj1%num1 = 5.0
obj2%num1 = 6.0

CALL sub(obj1,obj2)

END PROGRAM

FUNCTION extfun(d1,d2)
USE mod1
TYPE(ty) :: d1,extfun
REAL :: d2
d1%num1 = d1%num1 + 2
d2 = d2 + 2.0
extfun%num1 = d1%num1 + int(d2)
END FUNCTION
