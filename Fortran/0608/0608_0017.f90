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
  FINAL::des4_assumesize,des4_explicit
END TYPE

CONTAINS
SUBROUTINE destructor(bv)
  TYPE(ty)::bv
  PRINT*,'parent destructor called::destructor'
  PRINT*,bv%ii
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:,:)
  PRINT*,'destructor called::last'
  PRINT*,cv(3,4)%ii
END SUBROUTINE


SUBROUTINE des4_explicit(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy(2:3,2:4)
  PRINT*,'destructor called::des4_explicit'
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
TYPE(ty2),ALLOCATABLE :: ty2_obj1(:,:)
TYPE(ty2) :: ty2_obj2(3,4)
ALLOCATE(ty2_obj1,SOURCE=ty2_obj2)
ty2_obj1%ii=100
ty2_obj1%jj=200
ty2_obj1%kk=300
ty2_obj1(2:3,2:4)%kk=30
ty2_obj2%ii=400
ty2_obj2(1:2,1:3)%ii=400
ty2_obj2%jj=500
ty2_obj2%kk=600
ty2_obj1(2:3,2:4)=ty2_obj2(1:2,1:3)
IF(ty2_obj1(3,4)%ii .NE. 400) print*,201
END
