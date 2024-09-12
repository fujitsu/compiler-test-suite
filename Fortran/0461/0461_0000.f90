MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  INTEGER,allocatable::kk
  CONTAINS
  FINAL::dest
END TYPE

CONTAINS
SUBROUTINE dest(bv)
  TYPE(ty)::bv
  INTEGER::i
  PRINT*,'correct destructor called'
  DO i=1,bv%ii
    print*,bv%ii
  ENDDO
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty) :: ty_obj1
BLOCK
ty_obj1%ii=4
ty_obj1=ty(4,9)
IF(ty_obj1%ii .EQ. 3) print*,201
ENDBLOCK
END
