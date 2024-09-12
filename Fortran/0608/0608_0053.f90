MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
  FINAL::last
END TYPE
CONTAINS
SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'destructor called::last'
  PRINT*,cv(2)%ii
END SUBROUTINE
END MODULE 


PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:)
TYPE(ty),ALLOCATABLE :: ty_obj3(:)
ALLOCATE(ty_obj1(3))
ALLOCATE(ty_obj3(3))
ty_obj1(2)%ii=30
ty_obj3(2)%ii=70
DEALLOCATE(ty_obj3,ty_obj1)
END
