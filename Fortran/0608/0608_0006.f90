MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor_ty
END TYPE
CONTAINS
SUBROUTINE destructor_ty(dmy)
  TYPE(ty),INTENT(IN)::dmy(2)
  PRINT*,'destructor called'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 




MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  TYPE(ty),ALLOCATABLE::ty_alloc(:)
END TYPE
END MODULE 


MODULE mod3
USE mod2
IMPLICIT NONE
TYPE,EXTENDS(ty1)::ty2
  INTEGER :: kk=3
  TYPE(ty1)::ty1_obj1(2)
END TYPE
END MODULE 


PROGRAM MAIN
USE mod3
IMPLICIT NONE
TYPE(ty2) :: ty2_obj1
TYPE(ty) :: ty_obj1(2)
ty_obj1(1)%ii=50
ty_obj1(2)%ii=60
ALLOCATE(ty2_obj1%ty1_obj1(2)%ty_alloc(4))
ty2_obj1%ty1_obj1(2)%ty_alloc(2:3)%ii=40
ty2_obj1%ty1_obj1(2)%ty_alloc(2:3)=ty_obj1
IF(ty2_obj1%ty1_obj1(2)%ty_alloc(2)%ii .EQ. 60) print*,201
IF(ty2_obj1%ty1_obj1(2)%ty_alloc(3)%ii .EQ. 50) print*,202
DEALLOCATE(ty2_obj1%ty1_obj1(2)%ty_alloc)
END
