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
  PRINT*,dmy(1,1,1)%ii,dmy(2,1,1)%ii,dmy(1,1,2)%ii,dmy(2,1,2)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
TYPE(ty) :: ty_obj2
ty_obj2%ii=10
ALLOCATE(ty_obj1(2,1,8),SOURCE=ty_obj2)
ty_obj1(1,1,6)%ii=20
ty_obj1(2,1,6)%ii=30
ty_obj1(1,1,7)%ii=40
ty_obj1(2,1,7)%ii=50
CALL sub(ty_obj1,ty_obj2)
CONTAINS 
SUBROUTINE sub(dmy1,dmy2)
  TYPE(ty),ALLOCATABLE :: dmy1(:,:,:)
  TYPE(ty) :: dmy2
  INTEGER::v(2:3)=(/6,7/)
  dmy1(:2,1:,v)=dmy2
  IF(dmy1(2,1,6)%ii .NE. 10) print*,201
  DEALLOCATE(dmy1)
END SUBROUTINE
END
