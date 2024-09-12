MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor
END TYPE

CONTAINS
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
INTEGER::v(2:3)=(/6,7/)
ty_obj2%ii=10
ALLOCATE(ty_obj1(2,1,8),SOURCE=ty_obj2)
ty_obj1(1,1,6)%ii=20
ty_obj1(2,1,6)%ii=30
ty_obj1(1,1,7)%ii=40
ty_obj1(2,1,7)%ii=50
ty_obj1(:2,1:,v)=ty_obj2
IF(ty_obj1(2,1,6)%ii .NE. 10) print*,201
DEALLOCATE(ty_obj1)
END
