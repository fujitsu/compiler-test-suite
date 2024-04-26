PROGRAM main
IMPLICIT NONE

INTEGER :: arr(10) = (/-1,1,-1,1,-1,1,-1,1,-1,1/)
INTEGER :: i

ASSOCIATE(bb => arr)
  FORALL(i = 1:10 , bb(i) .NE. -1)
    bb(i) = 1
  END FORALL
END ASSOCIATE

IF(ALL(arr(2:10:2) .EQ. 1)) THEN
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
