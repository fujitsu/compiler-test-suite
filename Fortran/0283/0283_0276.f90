MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL,DIMENSION(3:12) :: marr
END TYPE

INTERFACE
REAL FUNCTION fun_2(ddn)
REAL :: ddn
END FUNCTION
END INTERFACE

CONTAINS

FUNCTION fun_1()
REAL,DIMENSION(1:10) :: fun_1
fun_1 = (/2.3,1.2,4.3,5.0,3.3,4.0,5.9,1.1,2.1,1.0/)
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: num = 2.0
REAL,POINTER :: ptr
TYPE(t1),ALLOCATABLE :: obj
ALLOCATE(obj,ptr)
ptr = 5.0

obj%marr = (/-1.0,2.0,-3.0,4.0,-5.0,6.0,-7.0,8.0,-1.0,10.0/)

ASSOCIATE(aa => (obj%marr(3:) * fun_2(num) + (ptr*fun_1())))
  CALL sub(aa)     
if(size(aa)/=10) print*,101,size(aa)
if(sizeof(aa(1))/=4) print*,102
if(all(shape(aa)/=10)) print*,103
END ASSOCIATE

CONTAINS

SUBROUTINE sub(ddr)
IMPLICIT NONE
REAL,DIMENSION(1:10) :: ddr
IF(ddr(6) .EQ. 44.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
END SUBROUTINE

END PROGRAM

REAL FUNCTION fun_2(ddn)
REAL :: ddn
fun_2 = ddn * 2.0
END FUNCTION
