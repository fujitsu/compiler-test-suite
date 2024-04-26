MODULE mod1
IMPLICIT NONE

TYPE t1
  CHARACTER(LEN = 6) :: ch
END TYPE

TYPE ,EXTENDS(t1):: t2
  CHARACTER(LEN = 4),DIMENSION(4) :: ch2
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t1),POINTER :: ptr
CLASS(t2),ALLOCATABLE,TARGET :: acc

ALLOCATE(acc)
acc%ch2 = 'aaaa'
acc%ch = 'xxxxxx'

ptr => acc

ASSOCIATE(aa => acc%ch2(2:3)(2:3))
  aa(1) = 'bb'
  aa(2) = 'bb'
END ASSOCIATE

IF(ALL(acc%ch2(2:3) .EQ. 'abba')) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
