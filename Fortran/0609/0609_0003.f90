MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor_ty
END TYPE
CONTAINS
SUBROUTINE destructor_ty(dmy)
  TYPE(ty),INTENT(IN)::dmy
  PRINT*,'DESTRUCTOR CALLED ty'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 



MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  CLASS(ty),ALLOCATABLE::ty_alloc(:)
  CONTAINS
    FINAL::destructor_ty1
END TYPE
CONTAINS
SUBROUTINE destructor_ty1(dmy)
  TYPE(ty1),INTENT(INOUT)::dmy(4)
  PRINT*,'DESTRUCTOR CALLED ty1'
  PRINT*,dmy%ii
  dmy(3)%ii=49
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_obj1(2)
ALLOCATE(ty1::ty1_obj1(2)%ty_alloc(4))
ty1_obj1(2)%ty_alloc%ii=38
ty1_obj1(2)%ty_alloc(3)%ii=39
DEALLOCATE(ty1_obj1(2)%ty_alloc)
END
