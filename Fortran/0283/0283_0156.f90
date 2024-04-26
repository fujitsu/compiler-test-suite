MODULE mod1
IMPLICIT NONE

TYPE ty
INTEGER :: num
PROCEDURE(sub),POINTER,NOPASS :: proc
END TYPE

CONTAINS

SUBROUTINE sub(a,b)
TYPE(ty),INTENT(IN) :: a
INTEGER :: b
b = b + a%num
END SUBROUTINE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: n = 4
TYPE(ty) :: obj
TYPE(ty),ALLOCATABLE :: obj2

ASSOCIATE(bb => obj)
  bb%num = 10
  bb%proc => sub
  CALL bb%proc(bb,n)
  ALLOCATE(obj2 , SOURCE = bb)
  IF(obj2%num .EQ. 10) THEN
    DEALLOCATE(obj2)
  ELSE
    obj2%num = 0
  END IF
END ASSOCIATE

IF(n .EQ. 14) THEN
  n = 0
ELSE
  n = 1
END IF

IF((n .NE. 1) .AND. (ALLOCATED(obj2))) THEN
  PRINT*,101
ELSE
  PRINT*,'pass'
END IF

END PROGRAM
