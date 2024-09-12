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
CLASS(*),ALLOCATABLE  :: ty_obj
ALLOCATE(ty2::ty_obj)
SELECT TYPE(ty_obj)
  TYPE IS(ty)
    PRINT*,201
  TYPE IS(ty2)
    ty_obj%ii=10
    ty_obj%jj=20
    ty_obj%ty1_cmp%ii=30
    ty_obj%ty1_cmp%jj=40
END SELECT
DEALLOCATE(ty_obj)
END
