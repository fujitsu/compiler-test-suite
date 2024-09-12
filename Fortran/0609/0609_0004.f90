MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=99
  CONTAINS
    FINAL::destructor_ty
END TYPE
CONTAINS
SUBROUTINE destructor_ty(dmy)
  TYPE(ty)::dmy
  PRINT*,'DESTRUCTOR CALLED ty'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 




MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  CLASS(ty),POINTER::ty_ptr
  CONTAINS
    FINAL::destructor_ty1
END TYPE
CONTAINS
SUBROUTINE destructor_ty1(dmy)
  TYPE(ty1)::dmy
  PRINT*,'DESTRUCTOR CALLED ty1'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 




PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_actual
TYPE(ty)  :: ty_obj2
ALLOCATE(ty1_actual%ty_ptr,SOURCE=ty_obj2)
CALL sub(ty1_actual)
CONTAINS
SUBROUTINE sub(ty1_dmy)
  TYPE(ty1)::ty1_dmy
  TYPE(ty1) :: ty1_obj1
  ty1_obj1%ii=89
  DEALLOCATE(ty1_dmy%ty_ptr)
  ALLOCATE(ty1_dmy%ty_ptr,SOURCE=ty1_obj1)
  DEALLOCATE(ty1_dmy%ty_ptr)
END SUBROUTINE
END
