MODULE mod1
TYPE ty
  INTEGER ::ii=99
  CONTAINS
  FINAL::ty1
END TYPE
CONTAINS
SUBROUTINE ty1(dmy)
  TYPE(ty)::dmy(*)
  PRINT*,'in destructor'
  PRINT*,dmy(1)%ii,dmy(2)%ii,dmy(3)%ii
END SUBROUTINE

FUNCTION fun1()
  TYPE(ty),ALLOCATABLE::fun1(:)
  TYPE(ty)::local(3)
  ALLOCATE(fun1(3))
  local(1)%ii=1
  local(2)%ii=2
  local(3)%ii=3
  fun1=CSHIFT(local,SHIFT=-1)
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty)::obj(3)
obj=CSHIFT(fun1(),SHIFT=1)
IF(obj(1)%ii .ne. 1)PRINT*,'error'
END
