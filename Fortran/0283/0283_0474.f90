MODULE mod1
IMPLICIT NONE

TYPE ty
  CHARACTER(LEN = 10),DIMENSION(:,:,:,:),ALLOCATABLE :: chr 
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj
ALLOCATE(obj%chr(8,5,7,3))

obj%chr = 'xxaaxxaaxx'

ASSOCIATE(aa => obj%chr(::2,2::2,1::3,1))
  IF(ALL(aa(:,:,:)(3:8) .EQ. 'aaxxaa')) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
