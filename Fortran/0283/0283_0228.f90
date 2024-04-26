MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) = 0 , n=3
TYPE(tt) :: ob1,ob2
ob1%i = 2
ob2%i = 3

ASSOCIATE(b => a(ob1%i : (ob2%i * n) : ob1%i))
  b(ob1%i :fun() : ob1%i) = 1
END ASSOCIATE

IF(ALL(a(4:8:4) == 1)) THEN
  a(4:8:4) = 0
ELSE
  a(4:8:4) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun = 4
END FUNCTION

END PROGRAM
