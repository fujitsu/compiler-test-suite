MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

INTEGER,DIMENSION(10) :: arr = (/-1,1,-1,1,-1,1,-1,1,-1,1/)
INTEGER :: i = 0
TYPE(t1) :: obj
obj%i = 2

ASSOCIATE(bb => obj%i)
  FORALL(i = bb:10:bb)
    arr(i) = 3
  END FORALL
END ASSOCIATE

IF(ALL(arr(2:10:2) .EQ. 3)) THEN
  arr = 0
ELSE
  arr = 1
END IF

IF(ALL(arr(1:10) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
