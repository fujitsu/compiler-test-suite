MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: x=13
  INTEGER :: y=5,z=7
  INTEGER :: st_arr(3,5) = 22
END TYPE  

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

INTEGER :: arr(3:22,3:22,3:22,3:22) = 0
INTEGER,TARGET :: bb = 10
INTEGER ::arcm1(2,1,3,4)=4
INTEGER,ALLOCATABLE :: alc1,alc2,alc3
INTEGER,POINTER :: xx2
TYPE(t1) :: obj

ALLOCATE(alc1,alc2,alc3)

obj%st_arr(1,3) = 2
obj%st_arr(2,3) = 4

xx2 => bb
alc1 = 10
alc2 = 2
alc3 = 5

ASSOCIATE(b => arr)
  b(fun_2(2,1)*2:fun(20):alc2,alc3:obj%st_arr(3,5):arcm1(2,1,3,4)-1, &
    arcm1(2,1,3,4)+2:obj%x+obj%y:obj%st_arr(2,3)/2 , &
    obj%st_arr(1,3)+1:xx2*2:alc3-3) = 1
END ASSOCIATE

IF(ALL(arr(6:20:2,5:22:3,6:18:2,3:20:2) == 1)) THEN
  arr(6:20:2,5:22:3,6:18:2,3:20:2) = 0
ELSE
  arr(6:20:2,5:22:3,6:18:2,3:20:2) = 1
END IF 

IF(ALL(arr(3:22,3:22,3:22,3:22) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun(d1)
  INTEGER :: d1
  fun = d1
END FUNCTION

INTEGER FUNCTION fun_2(dm1,dm2)
  INTEGER :: dm1,dm2
  fun_2 = dm1+dm2
END FUNCTION

END PROGRAM
