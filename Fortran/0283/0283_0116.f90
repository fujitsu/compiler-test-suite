PROGRAM main
IMPLICIT NONE

INTEGER,POINTER :: ptr(:),ptr2(:)
INTEGER,TARGET :: arr(3:15) = 0

ASSOCIATE(bb => arr(6:13))
  ptr2 => ptr
  ptr2 => bb(3:6)
  ptr2 = 1
END ASSOCIATE

IF(ALL(arr(8:11) .EQ. 1)) THEN
  arr(8:11) = 0 
ELSE
  arr(8:11) = 1
END IF

IF(ALL(arr(3:15) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
