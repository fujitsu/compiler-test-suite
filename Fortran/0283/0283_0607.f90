PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 10) :: chr = 'xxaaxxaaxx'

ASSOCIATE(aa => chr)
  IF(aa(3:8) .EQ. 'aaxxaa') THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
