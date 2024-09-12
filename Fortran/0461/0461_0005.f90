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
print*, "ARRAY DESTRUCTOR CALLED"
print*, "30 50 60 70"
print*, "SCALAR DESTRUCTOR CALLED"
print*, 70
print*, "SCALAR DESTRUCTOR CALLED"
print*, 60
print*, "SCALAR DESTRUCTOR CALLED"
print*, 50
print*, "SCALAR DESTRUCTOR CALLED"
print*, 30
END SUBROUTINE
END MODULE 

MODULE mod2
USE mod1
IMPLICIT NONE
TYPE,EXTENDS(ty)::ty1
  INTEGER :: jj=2
  TYPE(ty),ALLOCATABLE::ty_alloc(:)
END TYPE
END MODULE 

PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_actual(2)
INTEGER::act2,act3,act4
ALLOCATE(ty1_actual(1)%ty_alloc(4))
act2=40
act3=50
act4=60
ty1_actual(1)%ty_alloc=(/ty(fun2(fun1()),4),ty(fun(act2),5),ty(fun(act3),6),ty(fun(act4),7)/)
CONTAINS
function fun(dmy)
  INTEGER ::fun,dmy
  fun=dmy+10
end function
integer function fun2(dmy)
  TYPE(ty) ::dmy
  fun2=dmy%ii
end function
function fun1()
  TYPE(ty)::fun1
  fun1%ii=30
end function
END
