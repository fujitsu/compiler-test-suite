MODULE mod1
IMPLICIT NONE

TYPE ty
INTEGER :: num
PROCEDURE(prc),POINTER,NOPASS :: proc
END TYPE

CONTAINS

INTEGER FUNCTION prc(a,b)
TYPE(ty),INTENT(IN) :: a
INTEGER,INTENT(IN) :: b
prc = b + a%num
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: n = 4
TYPE(ty) :: obj
obj%num = 10
obj%proc => prc

ASSOCIATE(aa => obj%proc(obj,n) * 5)
  IF(aa .EQ. 70) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF    
END ASSOCIATE

END PROGRAM
