MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: n
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER :: n2 = 10
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(*),DIMENSION(:,:,:,:,:,:),ALLOCATABLE :: obj

ALLOCATE(t2 :: obj(3,5,7,9,2,7))

SELECT TYPE(obj)
TYPE IS(t2)
ASSOCIATE(aa => fun(obj))
  IF(aa(1,1,1,1,1,1)%n2 .EQ. 10) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE
END SELECT

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
CLASS(t2),DIMENSION(:,:,:,:,:,:) :: dd1
CLASS(t2),DIMENSION(:,:,:,:,:,:),ALLOCATABLE :: fun
ALLOCATE(fun(3,5,7,9,2,7))
fun%n2 = dd1%n2
END FUNCTION

END PROGRAM
