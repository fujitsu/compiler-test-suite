PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 5),DIMENSION(4) :: ch = 'aaaaa'

ASSOCIATE(aa => ch(::2)(:))
  CALL sub(aa)
  aa(1:2)(1:5) = 'xxxxx'
  aa(1:2)(2:4) = 'zzz'
END ASSOCIATE

IF(ALL(ch(1:3:2)(1:5) .EQ. 'xzzzx')) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(dd)
IMPLICIT NONE
CHARACTER(LEN = 5),DIMENSION(2) :: dd
dd = 'ccccc'
END SUBROUTINE

END PROGRAM
