PROGRAM main

IMPLICIT NONE
INTEGER :: arr(10) =0

ASSOCIATE(aa => arr)
  aa([2,4,6,8]) = 1
END ASSOCIATE

IF(ALL(arr(2:8:2) == 1)) THEN
  arr(2:8:2) = 0
ELSE
  arr(2:8:2) = 1
END IF

IF(ALL(arr(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
