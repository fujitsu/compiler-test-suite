MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: st_arr(3,5) = 12
END TYPE  

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

INTEGER :: arr(3:22,3:22,3:22,3:22) = 0
INTEGER :: arcm(1,3,2,1) = 6
INTEGER,ALLOCATABLE :: alc1
TYPE(t1) :: obj

ALLOCATE(alc1)

obj%st_arr(1,3) = 8
alc1 = 2

ASSOCIATE(b => arr)
  b(fun(5): , : ,arcm(1,3,2,1): :alc1,obj%st_arr(1,3): ) = 1
END ASSOCIATE

IF(ALL(arr(5:22,3:22,6:22:2,8:22) == 1)) THEN
  arr(5:22,3:22,6:22:2,8:22) = 0
ELSE
  arr(5:22,3:22,6:22:2,8:22) = 1
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
