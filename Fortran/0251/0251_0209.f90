MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
  FINAL::dest,last
END TYPE

CONTAINS

PURE SUBROUTINE dest(bv)
  TYPE(ty),intent(in)::bv
  INTEGER::i
  DO i=1,bv%ii
  ENDDO
END SUBROUTINE

PURE SUBROUTINE last(cv)
  TYPE(ty),intent(in)::cv(:)
END SUBROUTINE
END MODULE 

PROGRAM MAIN
USE mod1
IMPLICIT NONE
if(x()==1) print*,"fail"
print*,"pass"

contains
PURE function x()
integer :: x
x=0
BLOCK
TYPE(ty) :: ty_obj1
TYPE(ty) :: ty_obj2
ty_obj1%ii=3
ty_obj2%ii=4
ty_obj1=ty_obj2
IF(ty_obj1%ii .EQ. 3) x=1
END BLOCK
END function
END
