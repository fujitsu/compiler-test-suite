PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 3) :: res
CHARACTER(LEN = 11) :: ch
ch = 'goodmorning'

res = fun(ch(3:9))

IF(ch(5:7) .EQ. res) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(d1)
IMPLICIT NONE
CHARACTER(LEN = 7) :: d1
CHARACTER(LEN = 3) :: fun
ASSOCIATE(aa => d1(3:5))
  CALL sub(aa)
  fun = aa
END ASSOCIATE
END FUNCTION

SUBROUTINE sub(d2)
IMPLICIT NONE
CHARACTER(LEN = 3) :: d2
d2 = 'u'
END SUBROUTINE

END PROGRAM
