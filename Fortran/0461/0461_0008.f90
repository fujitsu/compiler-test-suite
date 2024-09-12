MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  INTEGER,allocatable :: kk
  CONTAINS
  FINAL::destructor,last
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

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'wrong destructor called::destructor1'
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty) :: ty_obj1
ty_obj1%ii=3
ty_obj1=ty(4,40)
ty_obj1=ty(4,40)
IF(ty_obj1%ii .EQ. 3) print*,201
END
