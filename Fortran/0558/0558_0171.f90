MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num1
END TYPE
TYPE,EXTENDS(ty) :: ty2
  INTEGER :: num2
END TYPE

CONTAINS
SUBROUTINE rsub(dd1,dd2,dd3)
  CLASS(ty2) :: dd1,dd2,dd3
  SELECT TYPE(dd1)
  TYPE IS(ty2)
    dd1%num1 = dd2%num1 * dd3%num1
    dd1%num2 = dd2%num2 * dd3%num2
  END SELECT
  ENTRY qsub(dd2)
  SELECT TYPE(dd2)
  TYPE IS(ty2)
    dd2%num1 = dd2%num1 + 10
    dd2%num2 = dd2%num2 + 20
  END SELECT
  ENTRY psub(dd1,dd2)
  SELECT TYPE(dd1)
  TYPE IS(ty2)
    dd1%num1 = dd1%num1 + dd2%num1 * 2
    dd1%num2 = dd1%num2 + dd2%num2 * 3
  END SELECT
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty2),ALLOCATABLE :: obj1,obj2
TYPE(ty2) :: res

ALLOCATE(ty2 :: obj1,obj2)
obj1%num1 = 5
obj1%num2 = 7

obj2%num1 = 2
obj2%num2 = 3

res = fun(psub)

IF(res%num1 .EQ. 9 .AND. res%num2 .EQ. 16) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
FUNCTION fun(dum)
TYPE(ty2) :: fun
PROCEDURE(psub) :: dum

INTERFACE gnr
  PROCEDURE :: dum
END INTERFACE

CALL gnr(obj1,obj2)
fun = obj1

END FUNCTION

END PROGRAM

