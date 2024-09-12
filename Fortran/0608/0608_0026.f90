MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  TYPE(ty),POINTER::ptr
  CONTAINS
  FINAL::destructor,last
END TYPE

TYPE ty1
  TYPE(ty) :: cmp(2,3)
END TYPE

CONTAINS
SUBROUTINE destructor(bv)
  TYPE(ty)::bv
  PRINT*,'correct destructor called'
  PRINT*,bv%ii
  PRINT*,bv%ptr%ii
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'wrong destructor called::destructor1'
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty1)::ty1_obj1(2)
TYPE(ty) :: ty_obj2
TYPE(ty),TARGET::tar
tar%ii=100
ty1_obj1(1)%cmp%ii=3
ty1_obj1(2)%cmp%ii=6
ty_obj2%ii=4
ty_obj2%ptr=>tar
ALLOCATE(ty1_obj1(1)%cmp(2,1)%ptr)
ALLOCATE(ty1_obj1(2)%cmp(2,1)%ptr)
ty1_obj1(1)%cmp(2,1)%ptr%ii=30
ty1_obj1(2)%cmp(2,1)%ptr%ii=60
ty1_obj1%cmp(2,1)=ty_obj2
IF(ty1_obj1(1)%cmp(2,1)%ptr%ii .NE. 100) print*,201
END
