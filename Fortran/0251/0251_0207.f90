MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
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
BLOCK
save
TYPE(ty) :: ty_obj1
TYPE(ty) :: ty_obj2
ty_obj1%ii=3
ty_obj2%ii=4
ty_obj1=ty_obj2
IF(ty_obj1%ii .EQ. 3) print*,201
print*,'within block'
END BLOCK
print*,'after block: no destructor call before this???'
END
