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
CLASS(*),ALLOCATABLE :: ty_obj1
TYPE(ty)::local
local%ii=3
ALLOCATE(ty_obj1,SOURCE=local)
CALL sub(ty_obj1)
CONTAINS
SUBROUTINE sub(dmy1,dmy2)
  CLASS(*),ALLOCATABLE,OPTIONAL :: dmy1
  TYPE(ty),OPTIONAL :: dmy2
  SELECT TYPE(dmy1)
    TYPE IS(ty)
      ALLOCATE(dmy1%ptr)
      dmy1%ptr%ii=40
  END SELECT
  DEALLOCATE(dmy1)
END SUBROUTINE
END
