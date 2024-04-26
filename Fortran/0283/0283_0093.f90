PROGRAM main
IMPLICIT NONE

INTEGER :: arr(9)=(/-1,1,-1,1,-1,1,-1,1,-1/)

ASSOCIATE(bb => arr)
  WHERE(bb > 0)
    bb = 1
  ELSEWHERE
    bb = 0
  END WHERE
END ASSOCIATE

IF(ALL(arr(2:9:2) .EQ. 1)) THEN
  arr = 0
ELSE
  arr = 1
END IF

IF(ALL(arr(1:9) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
