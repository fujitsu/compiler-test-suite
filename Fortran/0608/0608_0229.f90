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
    TYPE(ty),ALLOCATABLE :: ty_dmy(:)
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE destructor(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(4)
  PRINT*,'correct destructor called'
  PRINT*,dmy%ii
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
DEALLOCATE(ty_actual)
END



SUBROUTINE sub(ty_dmy)
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_dmy(:)
TYPE(ty) :: ty_obj3(4)
ty_obj3%ii=20
ty_dmy=ty_obj3
IF(ty_dmy(1)%ii .EQ. 10) print*,201
END SUBROUTINE
