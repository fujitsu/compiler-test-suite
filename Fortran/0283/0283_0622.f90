PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 10) :: acc = 'xxaaxxaaxx'

ASSOCIATE(aa => acc)
  CALL sub(aa(3:8))
END ASSOCIATE

IF(acc(3:8) .EQ. 'aaxxaa') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(dd1)
IMPLICIT NONE
CHARACTER(LEN = 6),VALUE :: dd1
dd1 = 'xxxxxx'
END SUBROUTINE

END PROGRAM  