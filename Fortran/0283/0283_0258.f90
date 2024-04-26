PROGRAM main

IMPLICIT NONE
INTEGER :: arr(5:19) =0

ASSOCIATE(aa => arr(6:18:2))
  aa([1,3,5,7]) = 1
END ASSOCIATE

IF(ALL(arr(6:18:4) == 1)) THEN
  arr(6:18:4) = 0
ELSE
  arr(6:18:4) = 1
END IF

IF(ALL(arr(5:19) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
