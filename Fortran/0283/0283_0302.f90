MODULE mod1
IMPLICIT NONE

INTEGER,DIMENSION(1:3,2:4,3:5) :: arr2 = 3

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
INTEGER,DIMENSION(1:3,2:4,3:5) :: dd1,fun
dd1 = dd1 + 1
fun = dd1
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER,DIMENSION(1:5,20:24,-10:-6) :: arr1  = 2

ASSOCIATE(aa => arr1(1:5:2,20:24:2,-10:-6:2) + fun(arr2))
  IF(aa(2,2,2) .EQ. 6) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM