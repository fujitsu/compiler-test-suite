MODULE mod1
IMPLICIT NONE

TYPE t1
  CHARACTER(LEN = 2) :: ch
END TYPE

TYPE,EXTENDS(t1) :: t2
  CHARACTER(LEN = 6) :: ch2
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t2),DIMENSION(:),ALLOCATABLE :: acc
ALLOCATE(acc(1:10))
acc%ch2 = 'xxaaxx'

ASSOCIATE(aa => fun(acc))
  IF(aa(5)%ch2(3:4) .EQ. 'aa') THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF 
END ASSOCIATE

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),ALLOCATABLE :: dd1,fun
ALLOCATE(fun(1:10))
fun%ch2  =  dd1%ch2
END FUNCTION

END PROGRAM
