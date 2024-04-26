MODULE mod1
IMPLICIT NONE

TYPE ty
  COMPLEX(KIND = 8),DIMENSION(:),allocatable :: cmp1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty),ALLOCATABLE :: obj

ALLOCATE(obj)
ALLOCATE(obj%cmp1(2:8))
obj%cmp1(:7) = (10.20,30.40)

ASSOCIATE(aa => obj%cmp1(:7))
  IF(ALL(int(aimag(aa(2:6))) .EQ. int(aimag(obj%cmp1(5))))) print*,'pass'
END ASSOCIATE

END PROGRAM
