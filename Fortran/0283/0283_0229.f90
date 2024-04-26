MODULE mod1

TYPE t1
  INTEGER :: a1(2,3)
END TYPE

TYPE t2
  TYPE(t1) :: a2(5)
END TYPE

TYPE t3
  TYPE(t2) :: a3
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: arr(10) = 0
TYPE(t3) :: obj
TYPE(t2) :: t2_1
obj%a3%a2(1)%a1(1,3) = 2
t2_1%a2(2)%a1(2,2) = 3

ASSOCIATE(b => arr(obj%a3%a2(1)%a1(1,3) : ))
  b(t2_1%a2(2)%a1(2,2) : ) = 1
END ASSOCIATE

IF(ALL(arr(4:10) == 1)) THEN
  arr(4:10) = 0
ELSE
  arr(4:10) = 1
END IF

IF(ALL(arr(1:10) == 0))  THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
