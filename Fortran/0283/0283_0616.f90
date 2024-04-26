PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 5),POINTER :: ptr
CHARACTER(LEN = 5),TARGET :: tgt = 'aaaaa'
CHARACTER(LEN = 3),POINTER :: ptr2

ptr => tgt

ASSOCIATE(aa => ptr)
  ptr2 => aa(2:4)
END ASSOCIATE

IF(ptr2 .EQ. 'aaa') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM  
