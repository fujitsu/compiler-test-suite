MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor
    FINAL::destructor1
END TYPE

TYPE ty1
  TYPE(ty),ALLOCATABLE :: cmp(:,:,:)
END TYPE

CONTAINS
ELEMENTAL SUBROUTINE destructor1(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  dmy%ii=300
END SUBROUTINE

SUBROUTINE destructor(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:,:,:)
  PRINT*,'assume size destructor called'
  PRINT*,dmy(2,1,6)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty1)::ty1_obj1
TYPE(ty) :: ty_obj2
ty_obj2%ii=10
ALLOCATE(ty1_obj1%cmp(2,1,8),SOURCE=ty_obj2)
ty1_obj1%cmp(2,1,8)%ii=30
ty1_obj1%cmp(:2,:,3:)=ty_obj2
IF(ty1_obj1%cmp(2,1,8)%ii .NE. 10) print*,201
DEALLOCATE(ty1_obj1%cmp)
END
