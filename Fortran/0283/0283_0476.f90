MODULE mod1
IMPLICIT NONE

TYPE ty
  CHARACTER(LEN = 10) :: chr 
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj
obj%chr = 'xxaaxxaaxx'

ASSOCIATE(aa => fun(obj%chr))
  IF(aa(3:8) .EQ. 'aaxxaa') THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101,aa(3:8)
  END IF
END ASSOCIATE

CONTAINS

FUNCTION fun(dd)
IMPLICIT NONE
CHARACTER(LEN = 10) ::  dd,fun
fun = dd
END FUNCTION

END PROGRAM
