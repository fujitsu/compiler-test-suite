MODULE mod1
IMPLICIT NONE

INTERFACE
FUNCTION fun(dd1)
CHARACTER :: fun,dd1
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CHARACTER :: ac1 = 'c' 
CHARACTER(LEN = 5),DIMENSION(4) :: ch = 'aaaa'

ASSOCIATE(aa => TRIM(ch(2)) // fun(ac1))
  IF('aaaac' .EQ. aa) THEN 
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM

FUNCTION fun(dd1)
IMPLICIT NONE
CHARACTER :: dd1,fun
fun = dd1
END FUNCTION
