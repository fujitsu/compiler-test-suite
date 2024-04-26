PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 2) :: chr = 'hi',chr2 = 'hi'

ASSOCIATE(bb => chr)
  IF(chr2 .EQ. bb) PRINT*,'pass'
END ASSOCIATE

END PROGRAM
