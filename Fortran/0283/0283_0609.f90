PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 10),DIMENSION(4) :: chr = 'xxaaxxaaxx'

ASSOCIATE(aa => chr)
  SELECT CASE(aa(2)(4:7))
    CASE('axxa')
    PRINT*,'pass'
  END SELECT
END ASSOCIATE

END PROGRAM