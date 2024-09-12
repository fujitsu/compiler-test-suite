MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num1,num2
END TYPE

INTERFACE gnr
  MODULE PROCEDURE psub
END INTERFACE

CONTAINS
SUBROUTINE rsub(dobj1,dobj2)
  CLASS(ty) :: dobj1,dobj2
  dobj1%num1 = dobj2%num1 * 5
  dobj1%num2 = dobj2%num2 * 6
  ENTRY psub(dobj1)
  dobj1%num1 = dobj1%num1 + 5
  dobj1%num2 = dobj1%num2 + 10
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1

ALLOCATE(ty :: obj1)

obj1%num1 = 5
obj1%num2 = 7

CALL gnr(obj1)

IF(obj1%num1 .EQ. 10 .AND. obj1%num2 .EQ. 17) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

