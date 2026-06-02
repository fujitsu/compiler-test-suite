PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 5),DIMENSION(1:5) :: arr = 'aaaaa'

ASSOCIATE(aa => arr , bb => arr(2:4)(2:4) , cc => arr(2:4)(3:3))
  IF(ALL(cc .EQ. 'a')) cc = 'c'
END ASSOCIATE

IF(ALL(arr(2:4)(3:3) .EQ. 'c' )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
