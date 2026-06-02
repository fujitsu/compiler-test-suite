MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor
END TYPE

INTERFACE
SUBROUTINE sub(ty_dmy)
  IMPORT ty
    TYPE(ty),ALLOCATABLE :: ty_dmy
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE destructor(dmy)
  TYPE(ty)::dmy
  INTEGER::i
  DO i=1,dmy%ii
    print*,dmy%ii
  ENDDO
  PRINT*,"----------"
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE::ty_actual
ALLOCATE(ty_actual)
ty_actual%ii=3
CALL sub(ty_actual)
END


SUBROUTINE sub(ty_dmy)
USE mod1
TYPE(ty),ALLOCATABLE :: ty_dmy
TYPE(ty) :: ty_obj2
ty_obj2%ii=4
DEALLOCATE(ty_dmy)
ALLOCATE(ty_dmy,SOURCE=ty_obj2)
DEALLOCATE(ty_dmy)
END SUBROUTINE
