MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num
  CONTAINS 
  PROCEDURE,NOPASS :: gnr => pfun,qfun
END TYPE

CONTAINS
FUNCTION pfun(d1)
  CLASS(ty) :: d1
  TYPE(ty) :: pfun
  d1%num = d1%num * 2
  pfun = d1
END FUNCTION
FUNCTION qfun(dd1,dd2)
  CLASS(ty) :: dd1,dd2
  TYPE(ty) :: qfun
  dd1%num = dd1%num * 2
  dd2%num = dd2%num * 3
  qfun%num = dd1%num + dd2%num
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1,obj2
TYPE(ty) :: res

ALLOCATE(ty :: obj1,obj2)

obj1%num = 5
obj2%num = 7

CALL sub(pfun)

IF(res%num .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(pfun) :: dum

INTERFACE gnr
  MODULE PROCEDURE :: qfun
  PROCEDURE dum
END INTERFACE

res = gnr(obj1,obj2)

END SUBROUTINE

END PROGRAM

