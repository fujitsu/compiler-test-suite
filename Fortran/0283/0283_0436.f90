MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER,DIMENSION(:,:,:,:),ALLOCATABLE :: arr
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: a = 3,b = 3,c = 5
TYPE(ty) :: obj
ALLOCATE(obj%arr(3:12,3:12,3:12,3:12))

obj%arr = 5

ASSOCIATE(aa => obj%arr(:12:2,::2,a::c-b,:))
  aa = 1
  IF(ALL(aa(:5:2,::2,2::2,:) .EQ. 1)) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
