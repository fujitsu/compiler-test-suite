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
ty_obj1%ii=3
ty_obj2%ii=4
CALL sub(ty_obj1,ty_obj2)
CONTAINS
SUBROUTINE sub(dmy1,dmy2)
  TYPE(ty) :: dmy1
  TYPE(ty) :: dmy2
  TYPE(ty),TARGET::tar
  tar%ii=100
  dmy2%ptr=>tar
  ALLOCATE(dmy1%ptr)
  dmy1%ptr%ii=40
  dmy1=dmy2
  IF(dmy1%ptr%ii .NE. 100) print*,201
END SUBROUTINE
END
