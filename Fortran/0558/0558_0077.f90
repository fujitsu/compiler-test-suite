MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: num1
END TYPE
TYPE,EXTENDS(ty) :: ty2
END TYPE

INTERFACE
FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
END FUNCTION
FUNCTION intfun(dd1,dd2)
  IMPORT ty2
  CLASS(ty2) :: dd1,dd2
  type(ty2) :: intfun
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION nfun(d1,d2)
INTEGER :: d1,d2,nfun
d1 = d1 + d2
d2 = 2
nfun = d1 + d2
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty2) :: mn
PROCEDURE(extfun),POINTER :: ppfun
PROCEDURE(intfun) :: npfun

ppfun => extfun
mn = fun(nfun)
IF(mn%num1 .EQ. 50) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
FUNCTION fun(dfun)
TYPE(ty2) :: fun
PROCEDURE(nfun) :: dfun

INTERFACE gnr
  PROCEDURE ppfun
  PROCEDURE dfun
  PROCEDURE npfun
END INTERFACE
CLASS(ty2),ALLOCATABLE :: obj1,obj2
ALLOCATE(ty2 :: obj1,obj2)
obj1%num1 = 10.0
obj2%num1 = 10.0

fun = gnr(obj1,obj2)
END FUNCTION

END PROGRAM

FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
extfun = d1 + int(d2)
END FUNCTION

FUNCTION npfun(dd1,dd2)
  USE mod1
  CLASS(ty2) :: dd1,dd2
  type(ty2):: npfun
  dd1%num1 = dd1%num1 * 2.0
  dd2%num1 = dd2%num1 * 3.0
  npfun%num1 = dd1%num1 + dd2%num1
END FUNCTION
