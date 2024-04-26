MODULE mod1
IMPLICIT NONE

  CHARACTER(LEN = 10),DIMENSION(10) :: ch = 'xaaxaaxaax'

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CHARACTER(LEN = 4) :: res
res = fun(ch)

IF(res(1:4) .EQ. 'bbbb') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd)
IMPLICIT NONE
CHARACTER(LEN = 4) :: fun
CHARACTER(LEN = 10),DIMENSION(10) :: dd
ASSOCIATE(aa => dd(2::2)(3:8))
  IF(aa(3)(2:5) .EQ. 'xaax') THEN
    aa(3)(2:5) = 'bbbb'
  ELSE
    aa(3)(2:5) = 'xxxx'
  END IF
  fun = aa(3)(2:5)
END ASSOCIATE
END FUNCTION

END PROGRAM
