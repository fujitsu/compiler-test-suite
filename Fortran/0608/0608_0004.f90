MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor1_ty
    FINAL::destructor_ty
END TYPE
CONTAINS
SUBROUTINE destructor1_ty(dmy)
  TYPE(ty)::dmy(3)
  PRINT*,dmy(1)%ii
  PRINT*,301
END SUBROUTINE
SUBROUTINE destructor_ty(dmy)
  TYPE(ty)::dmy
  PRINT*,'CORRECT DESTRUCTOR CALLED'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 




MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  TYPE(ty),POINTER::ty_ptr
  CONTAINS
    FINAL::destructor_ty1
    FINAL::destructor1_ty1
END TYPE
CONTAINS
SUBROUTINE destructor1_ty1(dmy)
  TYPE(ty1)::dmy(3)
  PRINT*,dmy(1)%ii
  PRINT*,401
END SUBROUTINE
SUBROUTINE destructor_ty1(dmy)
  TYPE(ty1)::dmy
  PRINT*,'DESTRUCTOR OF TY1'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 




PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_obj1
TYPE(ty) :: ty_obj1
TYPE(ty),TARGET :: ty_obj2
ty_obj1%ii=10
ty1_obj1%ty_ptr=>ty_obj2
ty_obj2%ii=78
ty1_obj1%ty_ptr=ty_obj1
IF(ty1_obj1%ty_ptr%ii .NE. 10) print*,201
END
