MODULE mod1
TYPE ty
  INTEGER ::ii=2
  CONTAINS
  FINAL::ty1
END TYPE

CONTAINS
SUBROUTINE ty1(dmy)
  TYPE(ty)::dmy(:,:,:)
  PRINT*,'in destructor'
  PRINT*,dmy(2,1,3)%ii
END SUBROUTINE

FUNCTION fun1()
  TYPE(ty),POINTER::fun1(:,:,:)
  TYPE(ty),ALLOCATABLE::local(:,:,:)
  ALLOCATE(fun1(2,1,3))
  ALLOCATE(local(2,1,3))
  fun1%ii=1
  fun1(2,1,3)%ii=2
  local(2,1,3)%ii=fun1(2,1,3)%ii
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
IF(.NOT.(ASSOCIATED(fun1())))PRINT*,'pass'
END
