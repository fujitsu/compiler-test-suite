PROGRAM main
IMPLICIT NONE

REAL,POINTER :: ptr(:),ptr2(:)
REAL,TARGET :: arr(5)= 0.0,ar(5) = 0.0

ptr => ar

ASSOCIATE(bb => ptr(:))
  ptr2 => bb
  ptr2 => arr
  ptr2(3) = 1.0
END ASSOCIATE

IF(arr(3) .EQ. 1.0) THEN
  arr = 0.0
ELSE
  arr = 1.0
END IF

IF(ALL(arr(1:5) .EQ. 0.0)) THEN
PRINT*,'pass'
ELSE
PRINT*,101
END IF

END PROGRAM
