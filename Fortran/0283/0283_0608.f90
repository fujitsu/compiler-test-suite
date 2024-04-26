PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 10),DIMENSION(4) :: chr = 'xxaaxxaaxx'

ASSOCIATE(aa => chr)
  IF(ALL(aa(2:3)(3:8) .EQ. 'aaxxaa')) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
