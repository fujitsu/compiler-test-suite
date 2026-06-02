MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor_ty
END TYPE
CONTAINS
SUBROUTINE destructor_ty(dmy)
  TYPE(ty),INTENT(IN)::dmy(4)
  PRINT*,dmy(3)%ii
END SUBROUTINE
END MODULE 




MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  CLASS(*),ALLOCATABLE::ty_alloc(:)
END TYPE
INTERFACE
SUBROUTINE sub(ty1_dmy)
  IMPORT ty
  IMPORT ty1
  TYPE(ty1)::ty1_dmy(2)
END SUBROUTINE 
END INTERFACE
END MODULE 




PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_actual(2)
TYPE(ty)  :: local(4)
local%ii=60
local(3)%ii=70
ALLOCATE(ty1_actual(2)%ty_alloc(4),SOURCE=local)
CALL sub(ty1_actual)
END



SUBROUTINE sub(ty1_dmy)
USE mod2
TYPE(ty1)::ty1_dmy(2)
TYPE(ty) :: ty_obj1(4)
ty_obj1%ii=50
ty_obj1(3)%ii=80
DEALLOCATE(ty1_dmy(2)%ty_alloc)
ALLOCATE(ty1_dmy(2)%ty_alloc(4),SOURCE=ty_obj1)
DEALLOCATE(ty1_dmy(2)%ty_alloc)
END SUBROUTINE
