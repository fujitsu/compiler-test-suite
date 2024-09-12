MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor
    FINAL::destructor1
END TYPE

CONTAINS
ELEMENTAL SUBROUTINE destructor1(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  dmy%ii=300
END SUBROUTINE

SUBROUTINE destructor(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:,:,:)
  PRINT*,'assume size destructor called'
  PRINT*,dmy(2, 1, 8)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
INTEGER::dim3=8
ALLOCATE(ty_obj1(2,1,8))
ty_obj1(2,1,8)%ii=30
CALL sub(dim3=dim3,dmy=ty_obj1)
CONTAINS
SUBROUTINE sub(dmy,dim3)
  INTEGER::dim3
  TYPE(ty)  :: dmy(2,1,dim3)
  TYPE(ty) :: ty_obj2
  ty_obj2%ii=10
  dmy=ty_obj2
  IF(dmy(2,1,8)%ii .NE. 10) print*,201
END SUBROUTINE
END
