PROGRAM main
IMPLICIT NONE

INTEGER :: i,n = 0,x = 2,y = 3, z = 5

ASSOCIATE(bb => fun(x,y,z))
  DO i = 2,bb,2
    n = n + bb
  END DO
END ASSOCIATE

IF(n .EQ. 50) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun(a,b,c)
  INTEGER :: a,b,c
  fun = a+b+c
END FUNCTION

END PROGRAM
