PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 2),POINTER :: ctr(:),ctr2(:)
CHARACTER(LEN = 2),TARGET :: chr(2:10) = 'ii'

ASSOCIATE(bb => ctr(:))
  ctr2 => ctr
  ctr2 => chr(3:7)
  ctr2(1:5) = 'jj'
END ASSOCIATE

IF(ALL(chr(4:8) .EQ. 'jj')) THEN
  chr = 'ii'
ELSE
  chr = 'jj'
END IF

IF(ALL(chr(2:10) .EQ. 'jj')) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
