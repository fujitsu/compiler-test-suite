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
  FINAL::des4_assumesize,des4_assume
END TYPE

TYPE ty3
  TYPE(ty2),ALLOCATABLE :: cmp(:,:)
  CONTAINS
  FINAL::final_ty3
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
  PRINT*,'destructor called::des4_assume'
  PRINT*,dmy(3,4)%kk
END SUBROUTINE

SUBROUTINE des4_assumesize(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy(*)
  PRINT*,'destructor called::des4_assumesize'
  PRINT*,dmy(12)%kk
END SUBROUTINE

SUBROUTINE final_ty3(dmy)
  TYPE(ty3),INTENT(INOUT)::dmy
  PRINT*,'destructor called::final_ty3'
  PRINT*,dmy%cmp(3,4)%kk
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty3) :: ty3_obj1
TYPE(ty2) :: ty2_obj2(3,4)
ALLOCATE(ty3_obj1%cmp,SOURCE=ty2_obj2)
ty3_obj1%cmp%ii=100
ty3_obj1%cmp%jj=200
ty3_obj1%cmp%kk=300
ty3_obj1%cmp(3,4)%kk=30
ty2_obj2%ii=400
ty2_obj2(3,4)%ii=400
ty2_obj2%jj=500
ty2_obj2%kk=600
ty3_obj1%cmp=ty2_obj2
IF(ty3_obj1%cmp(3,4)%ii .NE. 400) print*,201
END
