PROGRAM main
IMPLICIT NONE

INTEGER :: num = 2, n , fun

fun(n) = n * 10

ASSOCIATE(aa => fun(num))
  SELECT CASE(aa)
  CASE(20)
    PRINT*,'pass'
  END SELECT
END ASSOCIATE

END PROGRAM
