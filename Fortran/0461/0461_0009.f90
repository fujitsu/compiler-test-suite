MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  INTEGER,allocatable::kk
  CONTAINS
  FINAL::destructor
END TYPE

CONTAINS
SUBROUTINE destructor(bv)
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
TYPE(ty),allocatable :: ty_obj1
allocate(ty_obj1)
ty_obj1%ii=3
ty_obj1=ty(4,9)
ty_obj1=ty(4,9)
IF(ty_obj1%ii .EQ. 3) print*,201
END
