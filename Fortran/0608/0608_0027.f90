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
  FINAL::des4_assume,des4_assumesize
END TYPE

TYPE ty3
  TYPE(ty2),ALLOCATABLE :: cmp(:,:)
END TYPE

CONTAINS
SUBROUTINE destructor(bv)
  TYPE(ty)::bv
  PRINT*,'destructor called::destructor'
  PRINT*,bv%ii
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:,:)
  PRINT*,'destructor called::last'
  PRINT*,cv(3,4)%ii
END SUBROUTINE


SUBROUTINE des4_assume(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy(:,:)
  PRINT*,'destructor called::des4_assume'
  PRINT*,dmy(2,3)%kk
END SUBROUTINE

SUBROUTINE des4_assumesize(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy(*)
  PRINT*,'destructor called::des4_assumesize'
  PRINT*,dmy(6)%kk
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty3)::ty3_obj1
TYPE(ty2) :: ty2_obj2(3,4)
ALLOCATE(ty3_obj1%cmp,SOURCE=ty2_obj2)
ty3_obj1%cmp%ii=100
ty3_obj1%cmp%jj=200
ty3_obj1%cmp%kk=300
ty3_obj1%cmp(2:3,2:4)%kk=30
ty3_obj1%cmp(2:3,2:4)%ii=50
ty2_obj2%ii=400
ty2_obj2(1:2,1:3)%ii=400
ty2_obj2%jj=500
ty2_obj2%kk=600
ty3_obj1%cmp(2:3,2:4)=ty2_obj2(1:2,1:3)
IF(ty3_obj1%cmp(3,4)%ii .NE. 400) print*,201
END
