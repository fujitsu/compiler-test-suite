MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor1,destructor2
END TYPE

CONTAINS
SUBROUTINE destructor1(dmy)
  TYPE(ty)::dmy(2,1,7:9,5,4,6)
  PRINT*,'DESTRUCTOR 1 CALLED'
  PRINT*,dmy(2,1,8,5,4,6)%ii
END SUBROUTINE
SUBROUTINE destructor2(dmy)
  TYPE(ty)::dmy(2,3,3)
  PRINT*,'DESTRUCTOR 2 CALLED'
  PRINT*,dmy(2,3,3)%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),ALLOCATABLE :: ty_actual(:,:,:,:,:,:)
INTEGER::res
res=fun(ty_actual)
IF(res /= 40) PRINT*,101
DEALLOCATE(ty_actual)
CONTAINS 
FUNCTION fun(ty_dmy)
  TYPE(ty),ALLOCATABLE :: ty_dmy(:,:,:,:,:,:)
  TYPE(ty) :: ty_obj2(2,1,3,5,4,6)
  INTEGER::fun
  ALLOCATE(ty::ty_dmy(2,1,7:9,5,4,6))
  ty_dmy%ii=5
  ty_dmy(2,1,8:9,5,2:4,4:6)%ii=10
  ty_obj2%ii=20
  ty_obj2(2,1,2:3,5,1:3,1:3)%ii=40
  ty_dmy(2,1,8:9,5,2:4,4:6)=ty_obj2(2,1,2:3,5,1:3,1:3)
  IF(ty_dmy(2,1,8,5,4,6)%ii .NE. 40) print*,201
  fun=ty_dmy(2,1,8,5,4,6)%ii
END FUNCTION
END
