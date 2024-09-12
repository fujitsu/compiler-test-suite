MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor_ty
END TYPE

TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  CONTAINS
    FINAL::destructor_ty1
END TYPE

TYPE,EXTENDS(ty1) :: ty2
  TYPE(ty1) :: ty1_cmp(2)
  CONTAINS
    FINAL::destructor_ty2
END TYPE

TYPE ty3
  TYPE(ty2)::ty2_cmp
END TYPE

CONTAINS
SUBROUTINE destructor_ty(dmy)
  TYPE(ty)::dmy
  PRINT*,dmy%ii
END SUBROUTINE
SUBROUTINE destructor_ty1(dmy)
  TYPE(ty1)::dmy
  PRINT*,dmy%jj
END SUBROUTINE
SUBROUTINE destructor_ty2(dmy)
  TYPE(ty2)::dmy
  PRINT*,dmy%ty1_cmp%ii,dmy%ty1_cmp%jj
END SUBROUTINE
END MODULE 


PROGRAM MAIN
USE mod1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: act(:,:)
CALL sub(act)
CONTAINS
SUBROUTINE sub(dmy)
  CLASS(*),ALLOCATABLE :: dmy(:,:)
  ALLOCATE(ty3::dmy(2:3,2))
  DEALLOCATE(dmy)
END SUBROUTINE  
END
