MODULE mod1
IMPLICIT NONE

CHARACTER(LEN = 10) :: ch = 'aaaaaxxxxx',ch2

INTERFACE
FUNCTION fun(dd1)
IMPLICIT NONE
CHARACTER(LEN = 10) :: fun,dd1
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

ASSOCIATE(aa => fun(ch))
  SELECT CASE(aa(1:5))
    CASE('aaaaa')
    ch2(1:5) = aa(1:5)
  END SELECT
  IF(aa(6:10) .EQ. 'xxxxx') THEN
    ch2(6:10) = aa(6:10)
  ELSE
    ch2(6:10) = 'bbbbb'
  END IF
END ASSOCIATE

IF(ch2 .EQ. 'aaaaaxxxxx') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM

FUNCTION fun(dd1)
IMPLICIT NONE
CHARACTER(LEN = 10) :: dd1,fun
fun = dd1
END FUNCTION
