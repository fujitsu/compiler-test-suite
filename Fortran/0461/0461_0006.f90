MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  INTEGER,allocatable::kk
  CONTAINS
    FINAL::destructor_ty_1
    FINAL::destructor_ty_2
END TYPE
CONTAINS
SUBROUTINE destructor_ty_1(dmy)
  TYPE(ty),INTENT(IN)::dmy
  PRINT*,'scalar destructor called'
  PRINT*,dmy%ii
END SUBROUTINE
SUBROUTINE destructor_ty_2(dmy)
  TYPE(ty),INTENT(INOUT)::dmy(:)
  PRINT*,'array destructor called'
  PRINT*,dmy%ii
END SUBROUTINE
END MODULE 

MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  TYPE(ty)::ty_alloc(4)
END TYPE
END MODULE 

PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_obj1(2)
ty1_obj1(2)%ty_alloc%ii=25
ty1_obj1(2)%ty_alloc=fun()
IF(ty1_obj1(2)%ty_alloc(3)%ii .NE. 60) print*,201
IF(ty1_obj1(2)%ty_alloc(2)%ii .NE. 50) print*,202
contains
function fun()
  TYPE(ty)::fun(4)
  fun=(/ty(10,1),ty(20,2),ty(30,3),ty(40,4)/)
print*, "array destructor called"
print*, "10 20 30 40"
print*, "scalar destructor called"
print*, 40
print*, "scalar destructor called"
print*, 30
print*, "scalar destructor called"
print*, 20
print*, "scalar destructor called"
print*, 10
  fun=(/ty(40,1),ty(50,2),ty(60,3),ty(70,4)/)
print*, "array destructor called"
print*, "40 50 60 70"
print*, "scalar destructor called"
print*, 70
print*, "scalar destructor called"
print*, 60
print*, "scalar destructor called"
print*, 50
print*, "scalar destructor called"
print*, 40
end function
END
