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
  CLASS(*),ALLOCATABLE::ty2_cmp
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
TYPE(ty3)  :: act(2)
CALL sub(act)
CONTAINS
SUBROUTINE sub(ty3_obj)
CLASS(*)  :: ty3_obj(2)
TYPE(ty2)::local1,local2
SELECT TYPE(ty3_obj)
  TYPE IS(ty3)
    local1%ii=10
    local2%ii=10
    local1%jj=20
    local2%jj=20
    local1%ty1_cmp%ii=30
    local2%ty1_cmp%ii=30
    local1%ty1_cmp%jj=40
    local2%ty1_cmp%jj=40
    ALLOCATE(ty3_obj(1)%ty2_cmp,SOURCE=local1)
    ALLOCATE(ty3_obj(2)%ty2_cmp,SOURCE=local2)
    DEALLOCATE(ty3_obj(1)%ty2_cmp,ty3_obj(2)%ty2_cmp)
END SELECT
END SUBROUTINE
END
