MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE

END MODULE 

PROGRAM main
USE mod1     
IMPLICIT NONE

INTEGER :: i = 0
CLASS(t2),DIMENSION(:),ALLOCATABLE :: arr1,arr2
ALLOCATE(arr1(5),arr2(5))

arr1%r2 = (/1.0,2.0,3.0,2.0,6.0/)
arr2%r2 = (/-3.0,2.0,-5.0,4.0,-7.0/)

ASSOCIATE(aa => fun(arr1,arr2))
  FORALL(i = 1:5,aa(i)%r2 .GT. 0.0)
    arr2(i)%r2 = 0.0
  END FORALL
END ASSOCIATE

IF(ALL(arr2(1:5:2)%r2 .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd1,dd2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),ALLOCATABLE :: dd1,dd2,fun
ALLOCATE(fun(5))
dd1%r2 = dd1%r2 + 3.0
dd2%r2 = dd2%r2 + 2.0
fun%r2 = dd1%r2 + dd2%r2
END FUNCTION

END PROGRAM
