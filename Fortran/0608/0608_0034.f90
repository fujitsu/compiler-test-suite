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
  PRINT*,'parent destructor called'
  PRINT*,bv%ii
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:,:)
  PRINT*,'wrong destructor called::last'
  IF(cv(3,4)%ii/=30)PRINT*,403
END SUBROUTINE

SUBROUTINE des4_assume(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy(:,:)
  PRINT*,'inherited type destructor called'
  PRINT*,dmy(2,3)%kk
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty2),ALLOCATABLE :: ty2_obj1(:,:)
TYPE(ty2) :: ty2_obj2(3,4)
ALLOCATE(ty2_obj1,SOURCE=ty2_obj2)
ty2_obj1%ii=100
ty2_obj1(2:3,2:4)%ii=120
ty2_obj1%kk=300
ty2_obj1(2:3,2:4)%kk=30

ty2_obj2%ii=300
ty2_obj2(1:2,1:3)%ii=400
ty2_obj2%kk=600
CALL sub(ty2_obj1,ty2_obj2)
CONTAINS 
SUBROUTINE sub(dmy1,dmy2)
  TYPE(ty2) :: dmy1(:,:)
  TYPE(ty2) :: dmy2(3,4)
  dmy1(2:3,2:4)=dmy2(1:2,1:3)
  IF(dmy1(3,4)%ii .NE. 400) print*,201
END SUBROUTINE
END
