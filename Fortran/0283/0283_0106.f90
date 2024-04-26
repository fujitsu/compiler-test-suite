MODULE mod1
TYPE t1
  CHARACTER(LEN = 2) :: chr(5) 
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE
END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE
TYPE(t2) :: obj2

obj2%tt_1%chr = 'hi'

ASSOCIATE(bb => obj2)
  CALL sub(bb)
END ASSOCIATE

IF(ALL(obj2%tt_1%chr .EQ. 'ih')) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(obj)
USE mod1
IMPLICIT NONE
TYPE(t2) :: obj
obj%tt_1%chr = 'ih'
END SUBROUTINE

END PROGRAM
