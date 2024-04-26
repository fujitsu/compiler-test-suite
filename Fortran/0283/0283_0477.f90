MODULE mod1
IMPLICIT NONE

TYPE ty
  CHARACTER(LEN = 10) :: chr 
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty),ALLOCATABLE :: obj
ALLOCATE(obj)
obj%chr = 'xxaaxxaaxx'

ASSOCIATE(aa => obj%chr)
  IF(aa(3:8) .EQ. 'aaxxaa') THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101,aa(3:8)
  END IF
END ASSOCIATE

END PROGRAM
