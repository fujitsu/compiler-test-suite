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
  CLASS(ty2),ALLOCATABLE::ty2_cmp
END TYPE

CONTAINS
SUBROUTINE destructor_ty(dmy)
  TYPE(ty)::dmy
  PRINT*,'destuctor_ty called'
  PRINT*,dmy%ii
END SUBROUTINE
SUBROUTINE destructor_ty1(dmy)
  TYPE(ty1)::dmy
  PRINT*,'destuctor_ty1 called'
  PRINT*,dmy%jj
END SUBROUTINE
SUBROUTINE destructor_ty2(dmy)
  TYPE(ty2)::dmy
  PRINT*,'destuctor_ty2 called'
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
CLASS(ty3)  :: ty3_obj(2)
ALLOCATE(ty2::ty3_obj(1)%ty2_cmp)
ALLOCATE(ty2::ty3_obj(2)%ty2_cmp)
SELECT TYPE(ty3_obj)
  TYPE IS(ty3)
    ty3_obj(1)%ty2_cmp%ii=10
    ty3_obj(1)%ty2_cmp%jj=20
    ty3_obj(1)%ty2_cmp%ty1_cmp%ii=30
    ty3_obj(1)%ty2_cmp%ty1_cmp%jj=40

    ty3_obj(2)%ty2_cmp%ii=50
    ty3_obj(2)%ty2_cmp%jj=60
    ty3_obj(2)%ty2_cmp%ty1_cmp%ii=70
    ty3_obj(2)%ty2_cmp%ty1_cmp%jj=80
END SELECT
DEALLOCATE(ty3_obj(2)%ty2_cmp,ty3_obj(1)%ty2_cmp)
END SUBROUTINE
END
