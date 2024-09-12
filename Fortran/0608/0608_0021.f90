MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  TYPE(ty),POINTER::ptr
  CONTAINS
  FINAL::destructor,last
END TYPE

TYPE ty1
  TYPE(ty)::cmp
END TYPE

CONTAINS
SUBROUTINE destructor(bv)
  TYPE(ty)::bv
  PRINT*,'correct destructor called'
  PRINT*,bv%ii
  IF (ASSOCIATED(bv%ptr))  DEALLOCATE(bv%ptr)
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'wrong destructor called::destructor1'
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty1):: ty1_obj1(3)
TYPE(ty) :: ty_obj2
TYPE(ty),TARGET::tar
tar%ii=100
ty_obj2%ptr=>tar
ALLOCATE(ty1_obj1(1)%cmp%ptr,SOURCE=tar)
ty1_obj1(1)%cmp%ptr=ty_obj2%ptr
END
