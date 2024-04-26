MODULE mod1

TYPE t1
  INTEGER :: i
  CONTAINS 
  PROCEDURE :: nw
END TYPE

TYPE t2
  TYPE(t1) :: tt_1(2,3)
END TYPE

  CONTAINS
  INTEGER FUNCTION nw(a,b)
    CLASS(t1),INTENT(IN) :: a
    INTEGER,INTENT(IN) :: b
    nw  = a%i + b
  END FUNCTION

END MODULE

PROGRAM main

USE mod1
INTEGER :: m = 2
TYPE(t2) :: ob_2
TYPE(t1) :: n
ob_2%tt_1(2,3)%i = 0
n%i = 1

ASSOCIATE(b => ob_2%tt_1(fun(),nw(n,m))%i) 
  b = 1
END ASSOCIATE

IF(ob_2%tt_1(fun(),nw(n,m))%i == 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS 

INTEGER FUNCTION fun()
  fun = 1
END FUNCTION

END PROGRAM
