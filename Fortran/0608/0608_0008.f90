MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor_ty
END TYPE
CONTAINS
SUBROUTINE destructor_ty(dmy)
  TYPE(ty)::dmy
  PRINT*,'correct destructor called'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 




MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  TYPE(ty),POINTER::ty_ptr
END TYPE
END MODULE 




PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_actual
TYPE(ty),TARGET :: ty_obj2
ty_obj2%ii=30
ty1_actual%ty_ptr=>ty_obj2
CALL sub(ty1_actual)
CONTAINS
SUBROUTINE sub(ty1_dmy)
  TYPE(ty1)::ty1_dmy
  TYPE(ty) :: ty_obj1
  ty_obj1%ii=10
  ty1_dmy%ty_ptr=ty_obj1
  IF(ty1_dmy%ty_ptr%ii .EQ. 30) print*,201
END SUBROUTINE
END
