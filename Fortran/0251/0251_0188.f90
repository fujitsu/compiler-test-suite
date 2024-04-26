MODULE mod1
TYPE ty
  INTEGER ::ii=2
  CONTAINS
  FINAL::dest
END TYPE
CONTAINS
SUBROUTINE dest(dmy)
  TYPE(ty)::dmy
  PRINT*,'in destructor'
  PRINT*,dmy%ii
END SUBROUTINE

FUNCTION fun1()
  TYPE(ty)::fun1
  TYPE(ty),ALLOCATABLE::local
  ALLOCATE(local)
  fun1%ii=40
  local%ii=60
END FUNCTION
END MODULE

USE mod1
IMPLICIT NONE
BLOCK
if(size(reshape([fun1(),fun1()],[2,1]))==2) print*,"pass"
ENDBLOCK
END
