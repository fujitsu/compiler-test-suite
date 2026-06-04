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
    TYPE(ty) :: ty_dmy
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE destructor(dmy)
  TYPE(ty)::dmy
  INTEGER::i
  PRINT*,'correct destructor called'
  DO i=1,dmy%ii
    print*,dmy%ii
  ENDDO
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty)::ty_actual
ty_actual%ii=3
CALL sub(ty_actual)
END


SUBROUTINE sub(ty_dmy)
USE mod1
TYPE(ty) :: ty_dmy
TYPE(ty) :: ty_obj2
ty_obj2%ii=4
ty_dmy=ty_obj2
IF(ty_dmy%ii .EQ. 3) print*,201
END SUBROUTINE
