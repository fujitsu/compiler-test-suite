MODULE mod1
IMPLICIT NONE

CHARACTER(LEN = 5) :: ch = 'aaaa'

INTERFACE
FUNCTION fun(dd1)
IMPLICIT NONE
CHARACTER(LEN = 5) :: fun,dd1
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

ASSOCIATE(aa => fun(ch))
  SELECT CASE(aa(2:4))
    CASE('xxx')
    PRINT*,'pass'
  END SELECT
END ASSOCIATE

END PROGRAM

FUNCTION fun(dd1)
IMPLICIT NONE
CHARACTER(LEN = 5) :: dd1,fun
fun = dd1
fun(2:4) = 'xxx'
END FUNCTION