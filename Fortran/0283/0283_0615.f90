PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 10) :: ch = 'xxxxx',fun_st,dd1

fun_st(dd1) = TRIM(dd1) // 'aaaaa' 

ASSOCIATE(aa => fun_st(ch))
  IF(aa(3:8) .EQ. 'xxxaaa') THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
