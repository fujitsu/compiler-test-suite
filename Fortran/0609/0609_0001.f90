MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor1
END TYPE

TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  CONTAINS
    FINAL::destructor2
END TYPE

TYPE,EXTENDS(ty1)::ty2
  INTEGER :: kk=3
  CONTAINS
    FINAL::destructor3
END TYPE

CONTAINS
SUBROUTINE destructor1(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
    PRINT*,'DESTRUCTOR 1 CALLED'
    PRINT*,dmy%ii
END SUBROUTINE

SUBROUTINE destructor2(dmy)
  TYPE(ty1),INTENT(INOUT)::dmy
    PRINT*,'DESTRUCTOR 2 CALLED'
    PRINT*,dmy%ii
END SUBROUTINE

SUBROUTINE destructor3(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy(:,:,:)
    PRINT*,'DESTRUCTOR 3 CALLED'
    PRINT*,dmy(2,1,1)%ii
END SUBROUTINE
END MODULE 

PROGRAM MAIN
USE mod1
IMPLICIT NONE
CLASS(ty),ALLOCATABLE :: ty_obj1(:,:,:)
ALLOCATE(ty2::ty_obj1(2,1,1))
ty_obj1%ii=100
ty_obj1(2,1,1)%ii=30
DEALLOCATE(ty_obj1)
END