MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: n1
  CHARACTER(LEN = 10) :: ch1='x'
  CHARACTER(LEN = 6) :: ch2='x'
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r1=0
END TYPE

TYPE,EXTENDS(t2) :: t3
  COMPLEX :: cmp=(0.0,0.0)
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t1),DIMENSION(:,:,:,:,:),POINTER :: ptr
CLASS(t3),DIMENSION(:,:,:,:,:),ALLOCATABLE,TARGET :: arr
ALLOCATE(arr(3,5,4,6,7))
arr%ch1='xxaaxxaaxx'

ptr => arr

ASSOCIATE(aa => fun(ptr))
SELECT TYPE(aa)
CLASS IS(t3)
  IF(aa(1,1,1,1,1)%ch1(3:8) .EQ. 'aaxxaa') THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF  
END SELECT
END ASSOCIATE

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
CLASS(t1),DIMENSION(:,:,:,:,:),POINTER :: fun,dd1
fun => dd1
END FUNCTION

END PROGRAM