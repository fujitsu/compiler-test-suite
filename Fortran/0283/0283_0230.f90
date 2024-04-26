MODULE mod1

TYPE t1
  INTEGER :: i
END TYPE

TYPE t2
  TYPE(t1) :: a1
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: arr(10) = 0
TYPE(t2) :: obj
TYPE(t1) :: ob
ob%i = 3
obj%a1%i = 2

ASSOCIATE(b => arr(obj%a1%i : fun(ob)))
  b(ob%i : ) = 1
END ASSOCIATE

IF(ALL(arr(4:9) == 1)) THEN
  arr(4:9) = 0
ELSE
  arr(4:9) = 1
END IF

IF(ALL(arr(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS 

FUNCTION fun(ob1)
  INTEGER :: fun
  TYPE(t1) :: ob1
  fun = ob1%i * 3
END FUNCTION

END PROGRAM
