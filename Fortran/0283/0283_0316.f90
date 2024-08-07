MODULE mod1
IMPLICIT NONE

INTERFACE
FUNCTION fun_1(dd1)
IMPLICIT NONE
INTEGER,DIMENSION(5) :: fun_1
INTEGER,DIMENSION(:),ALLOCATABLE :: dd1
END FUNCTION
FUNCTION fun_2(dd2)
IMPLICIT NONE
INTEGER,DIMENSION(:),POINTER :: fun_2
INTEGER,DIMENSION(:),ALLOCATABLE,TARGET :: dd2
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER,DIMENSION(:),ALLOCATABLE :: arr1
INTEGER,DIMENSION(:),ALLOCATABLE :: arr2
INTEGER,DIMENSION(:),ALLOCATABLE :: num

ALLOCATE(arr1(5),arr2(5))

ASSOCIATE(aa => fun_1(arr1) * fun_2(arr2) + (/1,2,3,4,5/) + 10)
  ALLOCATE(num(5),SOURCE = aa)
END ASSOCIATE

IF(num(3) .EQ. 25) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101,num
END IF

END PROGRAM

FUNCTION fun_1(dd1)
IMPLICIT NONE
INTEGER,DIMENSION(5) :: fun_1
INTEGER,DIMENSION(:),ALLOCATABLE :: dd1
dd1 = 3
fun_1 = dd1
END FUNCTION

FUNCTION fun_2(dd2)
IMPLICIT NONE
INTEGER,DIMENSION(:),POINTER :: fun_2
INTEGER,DIMENSION(:),ALLOCATABLE,TARGET :: dd2
dd2 = 4
fun_2 => dd2
END FUNCTION
