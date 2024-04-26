MODULE mod1
IMPLICIT NONE

TYPE ty
INTEGER :: num
CONTAINS
PROCEDURE,PASS(a) :: sub
END TYPE

CONTAINS

SUBROUTINE sub(a,b)
CLASS(ty),INTENT(IN) :: a
INTEGER :: b
b = b + a%num
END SUBROUTINE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: n = 4
TYPE(ty) :: obj

ASSOCIATE(bb => obj)
  bb%num = 10
  CALL bb%sub(n)
  DO WHILE(bb%num > 6)
    bb%num = bb%num - 2
  END DO
  IF(bb%num - 6) 10,20,10
  10 n = 0
  20 n = 1 
END ASSOCIATE

IF(n .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
