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
  PRINT*,dmy(2,1,8)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
TYPE(ty) :: ty_obj2(2,1,8)
INTEGER::i
ty_obj2%ii=10
ty_obj2(2,1,8)%ii=30
ALLOCATE(ty::ty_obj1(2,1,8))
ty_obj1%ii=10
ty_obj1(2,1,8)%ii=99
DO i=1,4,2
  ty_obj1=ty_obj2
ENDDO
DEALLOCATE(ty_obj1)
END
