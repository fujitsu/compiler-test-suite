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
CLASS(*),ALLOCATABLE :: ty_obj1(:)
CLASS(*),ALLOCATABLE :: ty_obj3(:)
TYPE(ty)::local,local1
local%ii=30
local1%ii=70
ALLOCATE(ty_obj1(3),SOURCE=local)
ALLOCATE(ty_obj3(3),SOURCE=local1)
DEALLOCATE(ty_obj3,ty_obj1)
END
