MODULE mod1
IMPLICIT NONE

INTEGER,DIMENSION(5) :: arr2 = (/10,15,1,0,12/)

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER,DIMENSION(1:5,20:24,-10:-6,3:7) :: arr1  = 2
INTEGER :: fun_st,ele

fun_st(ele) = ele + 3

ASSOCIATE(aa => arr1(1:5:2,20:24:2,-10:-6:2,3:7:2) + fun_st(arr2(2)))
  IF(aa(2,2,2,2) .EQ. 20) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
