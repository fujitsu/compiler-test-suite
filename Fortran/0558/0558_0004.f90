MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num
END TYPE

CONTAINS
FUNCTION pfun(d1)
INTEGER :: d1,pfun
  d1 = d1 * 5
  pfun = d1
END FUNCTION
FUNCTION qfun(dd1,dd2)
  CLASS(ty) :: dd1,dd2
  CLASS(ty),ALLOCATABLE :: qfun
  ALLOCATE(ty :: qfun)
  SELECT TYPE(qfun)
    TYPE IS(ty)
      dd1%num = dd1%num * 2
      dd2%num = dd2%num * 3
      qfun%num = dd1%num + dd2%num
  END SELECT
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1,obj2
TYPE(ty) :: res
PROCEDURE(pfun),POINTER :: ppfun

INTERFACE gnr
 PROCEDURE ppfun
 MODULE PROCEDURE qfun
END INTERFACE

ALLOCATE(ty :: obj1,obj2)
obj1%num = 5
obj2%num = 7
ppfun => pfun

res = gnr(obj1,obj2)

IF(res%num .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

