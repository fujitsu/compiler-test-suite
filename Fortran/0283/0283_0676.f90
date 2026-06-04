PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 6) :: charr(10) = 'hello'

ASSOCIATE(bb => charr(2:6))
  CALL sub(bb(2:4))
END ASSOCIATE

IF(ALL(charr(3:5) .EQ. 'world')) THEN
  charr = ' '
ELSE
  charr = 'a' 
END IF

IF(ALL(charr(1:10) .EQ. ' ')) THEN  
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(arr)
IMPLICIT NONE
CHARACTER(LEN=6) :: arr(3)
arr = 'world'
END SUBROUTINE

END PROGRAM
