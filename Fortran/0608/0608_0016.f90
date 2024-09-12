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
  TYPE(ty),INTENT(INOUT)::bv
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
TYPE(ty),POINTER :: ty_obj1(:,:)
TYPE(ty) :: ty_obj2
TYPE(ty),TARGET::tar
ty_obj2%ii=4
tar%ii=100
ty_obj2%ptr=>tar
ALLOCATE(ty_obj1(2,3))
ty_obj1(2,1)%ii=3
ALLOCATE(ty_obj1(2,1)%ptr,SOURCE=ty_obj2%ptr)
ty_obj1(2,1)=ty_obj2
IF(ty_obj1(2,1)%ptr%ii .NE. 100) print*,201
END
