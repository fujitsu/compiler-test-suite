PROGRAM main

IMPLICIT NONE
INTEGER :: arr(10) =0,ar(3)=[1,3,5]

ASSOCIATE(aa => arr)
  aa(ar) = 1
END ASSOCIATE

IF(ALL(arr(1:5:2) == 1)) THEN
  arr(1:5:2) = 0
ELSE
  arr(1:5:2) = 1
END IF

IF(ALL(arr(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
