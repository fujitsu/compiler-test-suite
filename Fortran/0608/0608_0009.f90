MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  INTEGER,ALLOCATABLE::kk
  CONTAINS
    FINAL::des_scalar,des_array
END TYPE
CONTAINS
SUBROUTINE des_array(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:)
  PRINT*,'ARRAY DESTRUCTOR CALLED'
  PRINT*,dmy(1)%ii
END SUBROUTINE

SUBROUTINE des_scalar(dmy)
  TYPE(ty),INTENT(INOUT)::dmy
  PRINT*,'SCALAR DESTRUCTOR CALLED'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 




MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  TYPE(ty),POINTER::ty_ptr(:)
END TYPE
END MODULE 




PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_actual(2)
TYPE(ty),TARGET :: ty_obj2(4)
INTEGER::res
ty_obj2%ii=100
ty_obj2(1)%ii=200
ty1_actual(1)%ty_ptr=>ty_obj2
res=fun(ty1_actual)
IF(res /= 60) PRINT*,101

CONTAINS
FUNCTION fun(ty1_dmy)
  TYPE(ty1)::ty1_dmy(2)
  TYPE(ty) :: ty_obj1(4)
  INTEGER :: fun
  ty_obj1%ii=50
  ty_obj1(3)%ii=60
  ALLOCATE(ty1_dmy(1)%ty_ptr(1)%kk)
  ty1_dmy(1)%ty_ptr(1)=ty_obj1(3)
  IF(ALLOCATED(ty1_dmy(1)%ty_ptr(1)%kk))PRINT*,'error'
  IF(ty1_dmy(1)%ty_ptr(1)%ii .NE. 60) print*,201
  fun=ty1_dmy(1)%ty_ptr(1)%ii
END FUNCTION
END
