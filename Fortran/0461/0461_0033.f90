MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=10
  INTEGER,ALLOCATABLE :: kk
  CONTAINS
    FINAL::destructor_ty_1,destructor_ty_2
END TYPE
CONTAINS
SUBROUTINE destructor_ty_1(dmy)
  TYPE(ty),INTENT(IN)::dmy
  PRINT*,'SCALAR DESTRUCTOR CALLED'
  PRINT*,dmy%ii
END SUBROUTINE
SUBROUTINE destructor_ty_2(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(4)
  PRINT*,'ARRAY DESTRUCTOR CALLED'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 

MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  TYPE(ty),ALLOCATABLE::ty_alloc(:)
END TYPE
INTERFACE
SUBROUTINE sub(ty1_dmy)
  IMPORT ty
  IMPORT ty1
  TYPE(ty1)::ty1_dmy(2)
END SUBROUTINE 
END INTERFACE
END MODULE 

PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_actual(2)
ALLOCATE(ty1_actual(1)%ty_alloc(4))
ty1_actual(1)%ty_alloc=(/ty(40,4),ty(50,5),ty(60,6),ty(70,7)/)
print*, "ARRAY DESTRUCTOR CALLED"
print*, "40 50 60 70"
print*, "SCALAR DESTRUCTOR CALLED"
print*, "70"
print*, "SCALAR DESTRUCTOR CALLED"
print*, "60"
print*, "SCALAR DESTRUCTOR CALLED"
print*, "50"
print*, "SCALAR DESTRUCTOR CALLED"
print*, "40"
END

SUBROUTINE sub(ty1_dmy)
USE mod2
TYPE(ty1)::ty1_dmy(2)
TYPE(ty) :: ty_obj1(4)
ty_obj1%ii=50
ty_obj1(3)%ii=60
ty1_dmy(1)%ty_alloc=ty_obj1
IF(ty1_dmy(1)%ty_alloc(3)%ii .NE. 60) print*,201
END SUBROUTINE
