MODULE mod1
IMPLICIT NONE

TYPE ty
  CHARACTER(LEN = 10),DIMENSION(:),POINTER :: ptr
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj
ALLOCATE(obj%ptr(10))

obj%ptr = 'xxaaxxaaxx'

ASSOCIATE(aa => obj%ptr(:8))
  IF(ALL(aa(:)(3:8) .EQ. 'aaxxaa')) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
