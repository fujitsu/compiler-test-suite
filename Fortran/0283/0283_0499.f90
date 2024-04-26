MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: x=3
  INTEGER :: y=5,z=17
  INTEGER :: st_arr(3,5) = 12
END TYPE  

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

INTEGER :: arr(3:22,3:22,3:22,3:22) = 0
INTEGER,TARGET :: aa = 2
INTEGER :: arcm(1,3,2,1) = 2,arcm1(2,1,3,4)=4
INTEGER,ALLOCATABLE :: alc1
INTEGER,POINTER :: xx1
TYPE(t1) :: obj

ALLOCATE(alc1)

obj%st_arr(1,3) = 6
obj%st_arr(2,3) = 4

xx1 => aa
alc1 = 20

ASSOCIATE(b => arr)
  b(fun(5):obj%z:xx1,obj%st_arr(1,3):alc1:arcm(1,3,2,1), &
    obj%x+4:arcm1(2,1,3,4)*5:obj%st_arr(2,3)-2, &
    xx1*2:obj%st_arr(2,3)*5:obj%x-1) = 1
END ASSOCIATE

IF(ALL(arr(5:17:2,6:20:2,7:20:2,4:20:2) == 1)) THEN
  arr(5:17:2,6:20:2,7:20:2,4:20:2) = 0
ELSE
  arr(5:17:2,6:20:2,7:20:2,4:20:2)   = 1
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

END PROGRAM
