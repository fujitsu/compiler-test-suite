Module m
TYPE ty
  INTEGER :: num
END TYPE
CONTAINS
SUBROUTINE msub(dd1)
  CLASS(ty) :: dd1
  dd1%num = dd1%num * 2
END SUBROUTINE
end module

PROGRAM main
use m
IMPLICIT NONE


INTERFACE gnr
  PROCEDURE :: msub
END INTERFACE

CLASS(ty),POINTER :: ptr
CLASS(ty),ALLOCATABLE,TARGET :: tgt

ALLOCATE(ty :: tgt)

tgt%num = 14
ptr => tgt

CALL gnr(ptr)

IF(ptr%num .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
