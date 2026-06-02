MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  INTEGER,ALLOCATABLE::ptr
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
INTEGER::var1=900
ty_actual%ii=2
ty_actual=ty(3,var1)
CALL sub(ty_actual)
END


SUBROUTINE sub(ty_dmy)
USE mod1
TYPE(ty) :: ty_dmy
ty_dmy=ty(3,1000)
ty_dmy=ty(4,1000)
ty_dmy=ty(4,1000)
IF(ty_dmy%ii .EQ. 3) print*,201
END SUBROUTINE
