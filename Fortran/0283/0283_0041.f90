MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) = 0,n=1,m=2
TYPE(tt) :: ob
ob%i = 5

ASSOCIATE(b => a( : :fun()))
  b((n*m):ob%i:fun()) =1
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
  fun = 2
END FUNCTION

END PROGRAM
