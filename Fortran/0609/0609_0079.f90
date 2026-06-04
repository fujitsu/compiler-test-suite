MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor1
END TYPE

TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=1
  CONTAINS
    FINAL::destructor2
END TYPE

INTERFACE
SUBROUTINE sub(ty_dmy)
  IMPORT ty
    CLASS(ty),ALLOCATABLE :: ty_dmy
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE destructor1(dmy)
  TYPE(ty)::dmy
  INTEGER::i
  DO i=1,dmy%ii
    print*,dmy%ii
  ENDDO
  PRINT*,"----------"
END SUBROUTINE
SUBROUTINE destructor2(dmy)
  TYPE(ty1)::dmy
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
CLASS(ty),ALLOCATABLE::ty_actual
ALLOCATE(ty_actual)
ty_actual%ii=3
CALL sub(ty_actual)
END


SUBROUTINE sub(ty_dmy)
USE mod1
CLASS(ty),ALLOCATABLE :: ty_dmy
TYPE(ty1) :: ty1_obj2
ty1_obj2%ii=4
DEALLOCATE(ty_dmy)
ALLOCATE(ty_dmy,SOURCE=ty1_obj2)
DEALLOCATE(ty_dmy)
END SUBROUTINE
