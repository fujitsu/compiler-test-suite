MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: num1 = 5.0
END TYPE

CONTAINS
FUNCTION enfun(dd1,dd2,dd3)
  CLASS(ty) :: dd1,dd2,dd3
  TYPE(ty) :: mfun,enfun
  enfun%num1 = dd1%num1 + dd2%num1 + dd3%num1
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

INTERFACE
FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
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
USE mod2
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1,obj2
TYPE(ty) :: res
PROCEDURE(extfun),POINTER :: ppfun

ALLOCATE(ty :: obj1,obj2)
obj1%num1 = 5.0
obj2%num1 = 6.0

ppfun => extfun
res = fun(nfun)

IF(res%num1 .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
FUNCTION fun(dfun)
TYPE(ty) :: fun
PROCEDURE(nfun) :: dfun

INTERFACE gnr
  PROCEDURE dfun
  MODULE PROCEDURE mfun
  PROCEDURE ppfun
END INTERFACE
res = gnr(obj1,obj2)
fun = res
END FUNCTION

END PROGRAM

FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
extfun = d1 + int(d2)
END FUNCTION
