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
  IF(bv%ii /=100) PRINT*,403
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'wrong destructor called::destructor1'
END SUBROUTINE

SUBROUTINE des3(dmy)
  TYPE(ty1),INTENT(INOUT)::dmy
  PRINT*,'destructor called::des3'
  IF(dmy%jj /=200) PRINT*,404
END SUBROUTINE

SUBROUTINE des4(dmy)
  TYPE(ty2),INTENT(INOUT)::dmy
  PRINT*,'destructor called::des4'
  IF(dmy%kk /=300) PRINT*,405
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty2) :: ty2_obj1
TYPE(ty2) :: ty2_obj2
ty2_obj1%ii=100
ty2_obj1%jj=200
ty2_obj1%kk=300
ty2_obj2%ii=400
ty2_obj2%jj=500
ty2_obj2%kk=600
ty2_obj1=ty2_obj2
IF(ty2_obj1%ii .NE. 400) print*,201
END
