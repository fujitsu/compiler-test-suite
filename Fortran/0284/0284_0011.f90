MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  TYPE(ty),POINTER::ptr
  CONTAINS
  FINAL::destructor
END TYPE

CONTAINS
SUBROUTINE sub(dmy)
  INTEGER::dmy
  TYPE(ty)::bv
  dmy=40
  return
ENTRY destructor(bv)
  PRINT*,'PASS'
return
END SUBROUTINE
END MODULE


PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty)::obj1,obj2
 obj2%ii=10
obj1=obj2
END


