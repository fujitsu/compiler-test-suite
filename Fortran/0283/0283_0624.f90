PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 10) :: ch = 'aaaaaxxxxx'

ASSOCIATE(aa => ch)
  IF(aa(1:5) .EQ. 'aaaaa' .AND. aa(6:10) .EQ. 'xxxxx') THEN
     PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF  
END ASSOCIATE

END PROGRAM
