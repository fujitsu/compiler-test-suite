MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: num1
END TYPE
TYPE,EXTENDS(ty) :: ty2
  INTEGER :: ii
END TYPE

CONTAINS
FUNCTION mnfun(dd1,dd2,dd3)
  CLASS(ty2) :: dd1,dd2,dd3
  TYPE(ty2) :: mnfun,mfun
  mnfun%num1 = dd1%num1 + dd2%num1 + dd3%num1
  RETURN
  ENTRY mfun(dd1,dd2)
  dd1%num1 = dd1%num1 * 2.0
  dd2%num1 = dd2%num1 * 3.0
  mfun%num1 = dd1%num1 + dd2%num1
  RETURN
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
SUBROUTINE sub(d1,d2)
CLASS(ty2) :: d1,d2
TYPE(ty2) :: res
PROCEDURE(mfun),POINTER :: ppfun

INTERFACE gnr
  FUNCTION extfun(d1,d2)
    INTEGER :: d1,extfun
    REAL :: d2
  END FUNCTION
  MODULE PROCEDURE intfun
  PROCEDURE :: ppfun
END INTERFACE

ppfun => mfun
res = gnr(d1,d2)

IF(res%num1 .EQ. 28.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END SUBROUTINE

END MODULE


PROGRAM main
USE mod3
IMPLICIT NONE

TYPE(ty2) :: obj1,obj2

obj1%num1 = 5.0
obj2%num1 = 6.0

CALL sub(obj1,obj2)

END PROGRAM

FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
extfun = d1 + int(d2)
END FUNCTION
