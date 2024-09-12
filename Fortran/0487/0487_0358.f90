MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor4
    FINAL::destructor3
    FINAL::destructor1
END TYPE

CONTAINS
SUBROUTINE destructor4(dmy)
  TYPE(ty)::dmy(*)
  PRINT*,'INSIDE 4'
END SUBROUTINE
SUBROUTINE destructor3(dmy)
  TYPE(ty)::dmy(:,:)
  write(1,*)3
END SUBROUTINE
SUBROUTINE destructor1(dmy)
  TYPE(ty)::dmy
  PRINT*,'INSIDE 1'
  PRINT*,401
END SUBROUTINE
END MODULE 

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_obj1(:,:)
TYPE(ty) :: ty_obj2(4,6)
ALLOCATE(ty::ty_obj1(4,6))
ty_obj1%ii=5
ty_obj1(:,:)%ii=10
ty_obj2%ii=20
ty_obj1(:,:)=ty_obj2(:,:)
IF(ty_obj1(4,6)%ii .NE. 20) print*,201
DEALLOCATE(ty_obj1)
print *,'pass'
END
