MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
  INTEGER :: n2
END TYPE

TYPE,EXTENDS(t2) :: t3
  CHARACTER(LEN = 10) :: ch
  CHARACTER(LEN = 6) :: ch2='x'
END TYPE

TYPE ty
  INTEGER :: n = 2
  REAL :: r = 6.0
END TYPE

INTERFACE OPERATOR(.mult.)
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION multip(dd1,dd2)
IMPLICIT NONE
CLASS(t3),DIMENSION(:,:,:,:,:),INTENT(IN) :: dd1
INTEGER,INTENT(IN) :: dd2
CLASS(t3),DIMENSION(:,:,:,:,:),ALLOCATABLE :: multip
ALLOCATE(multip(10,10,10,10,10))
multip%n2 = dd1%n2 * dd2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj
CLASS(t3),DIMENSION(:,:,:,:,:),ALLOCATABLE :: arr1
ALLOCATE(arr1(3:22,3:22,3:22,3:22,3:22))

arr1%n2 = 10
arr1%ch = 'xxxxxxxxxx'
arr1%r1 = 5.0

ASSOCIATE(aa => fun(arr1(::2,3::obj%n,::2,INT(obj%r)/obj%n::2,::obj%n)) .mult. 2)
  IF(ALL(aa(::2,::2,::2,::2,::2)%n2 .EQ. 20)) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
CLASS(t3),DIMENSION(:,:,:,:,:) :: dd1
CLASS(t3),DIMENSION(:,:,:,:,:),ALLOCATABLE :: fun
ALLOCATE(fun(10,10,10,10,10))
fun%n2 = dd1%n2
fun%ch = dd1%ch
fun%r1 = dd1%r1
END FUNCTION

END PROGRAM
