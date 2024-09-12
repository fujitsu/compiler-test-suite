MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor
    FINAL::destructor1
    FINAL::destructor2
END TYPE

CONTAINS
ELEMENTAL SUBROUTINE destructor1(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  dmy%ii=300
END SUBROUTINE

SUBROUTINE destructor(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:,:,:)
  PRINT*,'assume size destructor called'
  PRINT*,dmy(1,1,1)%ii,dmy(2,1,1)%ii
END SUBROUTINE
SUBROUTINE destructor2(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:)
  PRINT*,'assume size destructor called'
  PRINT*,dmy(1)%ii,dmy(2)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
ALLOCATE(ty_obj1(2,2,2))
ty_obj1%ii=0
ty_obj1(1,1,1)%ii=98
ty_obj1(2,1,1)%ii=99
DEALLOCATE(ty_obj1)
CALL sub(ty_obj1)
CONTAINS
SUBROUTINE sub(dmy)
  TYPE(ty),ALLOCATABLE :: dmy(:,:,:)
  TYPE(ty) :: ty_obj2
  INTEGER::v(2:3)=(/6,7/)
  ty_obj2%ii=10
  ALLOCATE(dmy(2,1,8),SOURCE=ty_obj2)
  dmy(2,1,6)%ii=30
  dmy(2,1,7)%ii=40
  dmy(2,1,v)=ty_obj2
  IF(dmy(2,1,6)%ii .NE. 10) print*,201
  DEALLOCATE(dmy)
END SUBROUTINE
END
