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
  TYPE(ty)::ty_alloc
END TYPE
END MODULE 

PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_obj1(2)
ty1_obj1(1)%ty_alloc%ii=80
ty1_obj1(2)%ty_alloc%ii=90
ty1_obj1%ty_alloc=fun()
IF(ty1_obj1(1)%ty_alloc%ii .NE. 40) print*,201
contains
function fun()
  TYPE(ty)::fun
  fun=ty(40,1)
print*, "scalar destructor called"
print*, 40
end function
END
