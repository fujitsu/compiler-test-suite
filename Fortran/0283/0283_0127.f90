PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 2) :: chr = 'hi',chr2 = 'hi'

ASSOCIATE(bb => chr)
  IF(chr2 .EQ. bb) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
