PROGRAM main
IMPLICIT NONE

REAL,DIMENSION(1:5) :: arr1,arr2
INTEGER :: i = 0
arr1 = (/1.0,2.0,3.0,2.0,6.0/)
arr2 = (/-3.0,2.0,-5.0,4.0,-7.0/)

ASSOCIATE(aa => fun(arr1,arr2))
  FORALL(i = 1:5,aa(i) .GT. 0.0)
    arr2(i) = 0.0
  END FORALL
END ASSOCIATE

IF(ALL(arr2(1:5:2) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd1,dd2)
IMPLICIT NONE
REAL,DIMENSION(1:5) :: dd1,dd2,fun
dd1 = dd1 + 3.0
dd2 = dd2 + 2.0
fun = dd1 + dd2
END FUNCTION

END PROGRAM
