MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor_arr,destructor_scalar
END TYPE

CONTAINS
SUBROUTINE destructor_arr(dmy)
  TYPE(ty)::dmy(2,1,3,5,4,6)
  PRINT*,'ARRAY DESTRUCTOR CALLED'
  PRINT*,dmy(2,1,3,5,4,6)%ii
END SUBROUTINE

SUBROUTINE destructor_scalar(dmy)
  TYPE(ty)::dmy
  PRINT*,'SCALAR DESTRUCTOR CALLED'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),POINTER :: ty_obj1(:,:,:,:,:,:)
TYPE(ty),TARGET :: ty_obj2(2,1,3,5,4,6)
TYPE(ty),TARGET :: ty_obj3(2,1,3,5,4,6)
ty_obj3%ii=10
ty_obj3(2,1,3,5,4,6)%ii=15
ty_obj1=>ty_obj3
ty_obj1(2,1,3,5,4,6)=fun(ty_obj2)
IF(ty_obj1(2,1,3,5,4,6)%ii /= 30) print*,201
CONTAINS
FUNCTION fun(dmy)
  TYPE(ty)::dmy(2,1,3,5,4,6)
  TYPE(ty)::fun
  dmy%ii=20
  dmy(2,1,3,5,4,6)%ii=30
  fun=dmy(2,1,3,5,4,6)
END FUNCTION
END
