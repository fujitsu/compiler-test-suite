MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor2_ty
    FINAL::destructor1_ty
END TYPE
CONTAINS
SUBROUTINE destructor2_ty(dmy)
  TYPE(ty),INTENT(IN)::dmy(:)
  PRINT*,'WRONG DESTRUCTOR'
  PRINT*,dmy%ii
END SUBROUTINE
SUBROUTINE destructor1_ty(dmy)
  TYPE(ty),INTENT(IN)::dmy
  PRINT*,'RIGHT DESTRUCTOR'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 




MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  TYPE(ty),POINTER::ty_ptr(:)
END TYPE
END MODULE 




PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_obj1(2)
TYPE(ty),TARGET :: ty_obj2(4)
ty_obj2%ii=50
ty_obj2(1)%ii=70
ty_obj2(3)%ii=60
ty1_obj1(1)%ty_ptr=>ty_obj2
ty1_obj1(1)%ty_ptr(1)=ty_obj2(3)
IF(ty1_obj1(1)%ty_ptr(1)%ii .NE. 60) print*,201
END
