PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(10) :: arr = (/2,5,8,22,1,4,9,8,33,78/)

ASSOCIATE(aa => arr(2: :2) + (/1,2,3,4,5/))
  IF(aa(3) .EQ. 7) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
