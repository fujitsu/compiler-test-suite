PROGRAM main

IMPLICIT NONE
INTEGER :: arr(3:12) =0,ar(3)=[1,2,3]

ASSOCIATE(aa => arr(4:10:2))
  aa(ar) = 1
END ASSOCIATE

IF(ALL(arr(4:8:2) == 1)) THEN
  arr(4:8:2) = 0
ELSE
  arr(4:8:2) = 1
END IF

IF(ALL(arr(3:12) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101,arr
END IF

END PROGRAM
