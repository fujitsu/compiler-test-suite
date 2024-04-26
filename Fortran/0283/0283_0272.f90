MODULE mod1
IMPLICIT NONE

REAL,DIMENSION(3:7) :: marr = [1.0,2.0,3.0,4.0,5.0]

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: res
REAL,DIMENSION(1:5) :: parr = [-1.0,2.2,-3.1,-2.5,4.2]
REAL,DIMENSION(:),ALLOCATABLE :: arr 
ALLOCATE(arr(2:6))
arr = [2.2,1.0,0.0,3.0,5.0]

res = fun_2(arr)

IF(res .EQ. 0.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

REAL FUNCTION fun_2(farr)
IMPLICIT NONE
REAL,DIMENSION(:),ALLOCATABLE :: farr
ASSOCIATE(aa => (marr+parr)+farr)
  IF(aa(4) .EQ. 4.5) THEN
    fun_2 = 0.0
  ELSE
    fun_2 = 1.0
  END IF
if(size(aa)/=5) print*,101
if(sizeof(aa(1))/=4) print*,102
if(all(shape(aa)/=5)) print*,103
END ASSOCIATE
END FUNCTION

END PROGRAM
