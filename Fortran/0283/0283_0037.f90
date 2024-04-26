MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) = 0,n=4,m=1
TYPE(tt) :: ob1
ob1%i = 2

ASSOCIATE(b => a(fun(): :ob1%i))
  b(fun():n*m) =1
END ASSOCIATE

IF(ALL(a(7:9:2) .EQ. 1)) THEN
  a(7:9:2) = 0
ELSE
  a(7:9:2) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS 

FUNCTION fun()
  INTEGER :: fun
  fun = 3
END FUNCTION

END PROGRAM
