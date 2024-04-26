MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER,DIMENSION(3:12,3:12,3:12,3:12,3:12,3:12) :: arr1
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: fun , ele

fun(ele) = ele * 2

TYPE(t2) :: obj
obj%tt_1%arr1 = 5

ASSOCIATE(aa => obj%tt_1%arr1(4:11:2,:, : : 4,6:,:10,3::3) +  10 + fun(5))
  IF(ALL(aa(2:3,4:9,1:3,3:5,2:7,1:2) .EQ. 25)) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
