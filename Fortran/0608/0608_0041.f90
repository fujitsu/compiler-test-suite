MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor,scalar
END TYPE

CONTAINS
SUBROUTINE scalar(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  PRINT*,'destructor called:scalar'
  PRINT*,dmy%ii
END SUBROUTINE

SUBROUTINE destructor(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(4,*)
  PRINT*,'assume size destructor called'
  PRINT*,dmy(4,4)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
ALLOCATE(ty_obj1(2,1,8))
ty_obj1(2,1,8)%ii=30
CALL sub(ty_obj1)
CONTAINS
SUBROUTINE sub(dmy)
  TYPE(ty)  :: dmy(4,*)
  TYPE(ty) :: ty_obj2
  ty_obj2%ii=10
  dmy(4,4)=ty_obj2
  IF(dmy(4,4)%ii .NE. 10) print*,201
END SUBROUTINE
END
