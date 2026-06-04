MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor2
    FINAL::destructor1
END TYPE

INTERFACE
SUBROUTINE sub(ty_dmy)
  IMPORT ty
    TYPE(ty),ALLOCATABLE :: ty_dmy(:)
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE destructor1(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:)
    PRINT*,'destructor 1'
    PRINT*,dmy(1)%ii
END SUBROUTINE
ELEMENTAL SUBROUTINE destructor2(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  dmy%ii =999
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_actual(:)
TYPE(ty) :: ty_obj2(4)
ty_obj2%ii=10
ALLOCATE(ty_actual,SOURCE=ty_obj2)
CALL sub(ty_actual)
END



SUBROUTINE sub(ty_dmy)
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_dmy(:)
TYPE(ty) :: ty_obj3(4)
ty_obj3%ii=20
DEALLOCATE(ty_dmy)
ALLOCATE(ty_dmy,SOURCE=ty_obj3)
DEALLOCATE(ty_dmy)
END SUBROUTINE
