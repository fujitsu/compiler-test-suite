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
  TYPE(ty),INTENT(INOUT)::dmy(2,6)
  PRINT*,'assume size destructor called'
  PRINT*,dmy(2,6)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
TYPE(ty) :: ty_obj2
ty_obj2%ii=10
ALLOCATE(ty_obj1(2,1,8),SOURCE=ty_obj2)
ty_obj1(2,1,8)%ii=30
CALL sub(ty_obj1,ty_obj2)
CONTAINS
SUBROUTINE sub(dmy1,dmy2)
  TYPE(ty) :: dmy1(:,:,:)
  TYPE(ty) :: dmy2
  dmy1(:2,1,3:)=dmy2
  IF(dmy1(2,1,8)%ii .NE. 10) print*,201
END SUBROUTINE
END
