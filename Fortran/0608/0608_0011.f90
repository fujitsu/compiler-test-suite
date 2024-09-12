MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  TYPE(ty),POINTER::ptr
  CONTAINS
  FINAL::destructor,last
END TYPE

CONTAINS
SUBROUTINE destructor(bv)
  TYPE(ty)::bv
  PRINT*,'correct destructor called'
  PRINT*,bv%ii
  IF (ASSOCIATED(bv%ptr)) THEN
    PRINT*,bv%ptr%ii
    DEALLOCATE(bv%ptr)
  ELSE
  ENDIF
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'wrong destructor called::destructor1'
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty) :: ty_obj1
TYPE(ty) :: ty_obj2
TYPE(ty),TARGET::tar
tar%ii=100
ty_obj1%ii=3
ty_obj2%ii=4
ty_obj2%ptr=>tar
ALLOCATE(ty_obj1%ptr)
ty_obj1%ptr%ii=40
ty_obj1=ty_obj2
IF(ty_obj1%ptr%ii/=100)print*,701
END
