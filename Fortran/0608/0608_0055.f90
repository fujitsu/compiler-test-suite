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
TYPE(ty),ALLOCATABLE :: ty_obj1
ALLOCATE(ty_obj1)
ty_obj1%ii=3
CALL sub(ty_obj1)
CONTAINS
SUBROUTINE sub(dmy1,dmy2)
  TYPE(ty),ALLOCATABLE,OPTIONAL :: dmy1
  TYPE(ty),OPTIONAL :: dmy2
  ALLOCATE(dmy1%ptr)
  dmy1%ptr%ii=40
  DEALLOCATE(dmy1)
END SUBROUTINE
END
