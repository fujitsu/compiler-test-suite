MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
  FINAL::dest,last
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

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'wrong destructor called::destructor1'
END SUBROUTINE
END MODULE 

PROGRAM MAIN
USE mod1
IMPLICIT NONE
call ss

contains
SUBROUTINE ss
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
print*,'after block'
END SUBROUTINE
END
