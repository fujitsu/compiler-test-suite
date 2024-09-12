MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
    FINAL::destructor_ty
END TYPE
CONTAINS
SUBROUTINE destructor_ty(dmy)
  TYPE(ty),INTENT(IN)::dmy(4)
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
END MODULE 



PROGRAM MAIN
USE mod2
IMPLICIT NONE
TYPE(ty1) :: ty1_obj1(2)
ALLOCATE(ty1_obj1(2)%ty_alloc(4))
ty1_obj1(2)%ty_alloc=(/ty(40),ty(30),ty(20),ty(10)/)
DEALLOCATE(ty1_obj1(2)%ty_alloc)
print*,"40 30 20 10" 
END
