MODULE mod1
IMPLICIT NONE

INTEGER,DIMENSION(5) :: arr2 = (/10,15,1,0,12/)

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER,DIMENSION(1:5,20:24,-10:-6) :: arr1  = 2

ASSOCIATE(aa => arr1(1:5:2,20:24:2,-10:-6:2) + MAXVAL(arr2))
  IF(aa(2,2,2) .EQ. 17) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM