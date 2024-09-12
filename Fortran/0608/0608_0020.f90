MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
  FINAL::destructor,last
END TYPE

TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  CONTAINS
  FINAL::des3
END TYPE

TYPE,EXTENDS(ty1)::ty2
  INTEGER :: kk=3
  CONTAINS
  FINAL::des4
END TYPE

TYPE ty3
  TYPE(ty2)::cmp
END TYPE

CONTAINS
SUBROUTINE destructor(bv)
  TYPE(ty)::bv
  PRINT*,'correct destructor called'
  PRINT*,bv%ii
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'wrong destructor called::destructor1'
END SUBROUTINE

SUBROUTINE des3(dmy)
  TYPE(ty1),INTENT(INOUT)::dmy
  PRINT*,'destructor called::des3'
  PRINT*,dmy%jj
END SUBROUTINE

SUBROUTINE des4(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy
  PRINT*,'destructor called::des4'
  PRINT*,dmy%kk
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty3),ALLOCATABLE :: ty3_obj1(:,:)
TYPE(ty2) :: ty2_obj2
ALLOCATE(ty3_obj1(2,2))
ty3_obj1%cmp%ii=100
ty3_obj1%cmp%jj=200
ty3_obj1%cmp%kk=300
ty2_obj2%ii=400
ty2_obj2%jj=500
ty2_obj2%kk=600
ty3_obj1%cmp=ty2_obj2
IF(ty3_obj1(1,1)%cmp%ii .NE. 400) print*,201
DEALLOCATE(ty3_obj1)
END
