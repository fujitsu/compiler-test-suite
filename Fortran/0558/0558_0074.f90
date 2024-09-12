MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num1
END TYPE
TYPE,EXTENDS(ty) :: ty2
END TYPE

INTERFACE
FUNCTION pfun(d1)
INTEGER :: d1,pfun
END FUNCTION
FUNCTION qfun(dd1,dd2)
  IMPORT ty2
  CLASS(ty2) :: dd1,dd2
  type(ty2),ALLOCATABLE :: qfun
END FUNCTION
END INTERFACE

CONTAINS
SUBROUTINE msub(d1,d2)
CLASS(ty2) :: d1,d2
TYPE(ty2) :: res

PROCEDURE(qfun) :: npfun
PROCEDURE(pfun),POINTER :: ppfun

INTERFACE gnr
 PROCEDURE ppfun
 PROCEDURE npfun
END INTERFACE
d1%num1 = 10
d2%num1 = 10
ppfun => pfun
res = gnr(d1,d2)

IF(res%num1 .EQ. 20) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty2),ALLOCATABLE :: obj1,obj2

ALLOCATE(ty2 :: obj1,obj2)

obj1%num1 = 5
obj2%num1 = 7

CALL msub(obj1,obj2)

END PROGRAM

FUNCTION pfun(d1)
INTEGER :: d1,pfun
  d1 = d1 * 5
  pfun = d1
END FUNCTION

FUNCTION npfun(dd1,dd2)
  USE mod1
  CLASS(ty2) :: dd1,dd2
  type(ty2),allocatable:: npfun
  allocate(npfun)
    npfun%num1 = dd1%num1 + dd2%num1
END FUNCTION
