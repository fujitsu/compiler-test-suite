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
TYPE(ty2),POINTER :: ty2_obj1(:,:,:)
TYPE(ty2) :: ty2_obj2
ALLOCATE(ty2_obj1(3,3,3))
ty2_obj1%ii=100
ty2_obj1%jj=200
ty2_obj1%kk=300
ty2_obj2%ii=400
ty2_obj2%jj=500
ty2_obj2%kk=600
CALL sub(ty2_obj1,ty2_obj2)
CONTAINS
SUBROUTINE sub(dmy1,dmy2)
  TYPE(ty2),POINTER :: dmy1(:,:,:)
  TYPE(ty2) :: dmy2
  dmy1(3,3,3)=dmy2
  IF(dmy1(3,3,3)%ii .NE. 400) print*,201
END SUBROUTINE
END
