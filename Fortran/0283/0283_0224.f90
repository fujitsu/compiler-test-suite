MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) = 0,n=2,m=1
TYPE(tt) :: ob1,ob2
ob1%i = 2
ob2%i = 9 

ASSOCIATE(b => a( :ob2%i:(n*m)))
  b(ob1%i:fun():(n*m)) =1
END ASSOCIATE 

IF(ALL(a(3:7:4) .EQ. 1)) THEN
  a(3:7:4) = 0
ELSE
  a(3:7:4) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun = 5
END FUNCTION

END PROGRAM
