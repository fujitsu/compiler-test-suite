MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=3
  CONTAINS
    FINAL::destructor
END TYPE

CONTAINS
SUBROUTINE destructor(dmy)
  TYPE(ty)::dmy
  INTEGER::i
  DO i=1,dmy%ii
    print*,dmy%ii
  ENDDO
END SUBROUTINE
END MODULE 

PROGRAM MAIN
USE mod1
IMPLICIT NONE
CLASS(ty),ALLOCATABLE :: ty_obj1
TYPE(ty) :: ty_obj2
ty_obj2%ii=4
ALLOCATE(ty_obj1,SOURCE=ty_obj2)
DEALLOCATE(ty_obj1)
ty_obj2%ii=2
END
