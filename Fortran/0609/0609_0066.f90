MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
  FINAL::destructor,last
END TYPE

TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
END TYPE

TYPE,EXTENDS(ty1)::ty2
  INTEGER :: kk=3
  CONTAINS
  FINAL::des4_assume
END TYPE

CONTAINS
SUBROUTINE destructor(bv)
  TYPE(ty)::bv
  PRINT*,'destructor called::destructor'
  PRINT*,bv%ii
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'wrong destructor called::last'
END SUBROUTINE


SUBROUTINE des4_assume(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy(:,:)
  PRINT*,'correct destructor called::des4_assume'
  PRINT*,dmy(2,2)%kk
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: ty2_obj1(:,:)
ALLOCATE(ty2::ty2_obj1(2:4,3:6))
SELECT TYPE(ty2_obj1)
  CLASS IS(ty)
    PRINT*,201
  TYPE IS(ty1)
    PRINT*,203
  CLASS IS(ty2)
    ty2_obj1%ii=100
    ty2_obj1%kk=300
    ty2_obj1(3,4)%kk=30
END SELECT
DEALLOCATE(ty2_obj1)
END
