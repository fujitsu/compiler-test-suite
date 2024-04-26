MODULE mod1
IMPLICIT NONE

INTERFACE
FUNCTION fun_2(dd2)
IMPLICIT NONE
INTEGER(KIND = 4),POINTER :: dd2,fun_2
END FUNCTION
END INTERFACE

CONTAINS

FUNCTION fun_1(dd1)
IMPLICIT NONE
INTEGER(KIND = 4),ALLOCATABLE :: dd1,fun_1
ALLOCATE(fun_1)
fun_1 = dd1
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: num = 0
INTEGER(KIND = 4) :: arrcmp(5,4,3,2,6) = 125
INTEGER(KIND = 4),POINTER :: ptr
INTEGER(KIND = 4),ALLOCATABLE :: acc
INTEGER(KIND = 4),DIMENSION(:),ALLOCATABLE :: res
INTEGER(KIND = 4),DIMENSION(:,:,:),ALLOCATABLE :: arr1,arr2
ALLOCATE(ptr,acc,arr1(2:11,1:10,4:13),arr2(-1:8,3:12,-3:6),res(5))
ptr = 30
acc = 20
arr1(:,:,:) = 12
arr2(:,:,:) = 13
res = 0

ASSOCIATE(aa => arrcmp , bb => (/40,20,10,70,30/), &
          cc => fun_2(ptr)+fun_1(acc)+10 , dd => arr1(::2,2::2,:13:2) + arr2( : :2,3::2,:6:2))
  DO WHILE(aa(1,1,1,1,1) .GT. cc)
   aa(1,1,1,1,1) = aa(1,1,1,1,1) - 10
  END DO
  WHERE(bb .GT. 30)
    res = aa(1,1,1,1,1) + 2
  END WHERE
  IF(ALL(dd(1:5:2,1:5:2,1:5:2) .EQ. 25)) num = res(1)
END ASSOCIATE

IF(num .EQ. 57) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM

FUNCTION fun_2(dd2)
IMPLICIT NONE
INTEGER(KIND = 4),POINTER :: dd2,fun_2
fun_2 => dd2
END FUNCTION
