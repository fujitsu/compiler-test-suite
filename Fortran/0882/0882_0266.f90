PROGRAM MAIN

IMPLICIT NONE
 
TYPE ty
  INTEGER(KIND=8) ::ii
  INTEGER(KIND=4)::jj
  REAL(KIND=4)::real1
END TYPE
 
TYPE ,EXTENDS(ty)::ty1
  INTEGER(KIND=8) :: kk
  REAL(KIND=8) ::ll
END TYPE
 
TYPE ,EXTENDS(ty1)::ty2
  INTEGER(KIND=8) ::mm
  TYPE(ty1)::obj2
  INTEGER(KIND=8)::nn
END TYPE

TYPE(ty2),ALLOCATABLE,TARGET::from_obj
CLASS(ty),ALLOCATABLE,TARGET::to_obj
TYPE(ty2),POINTER::ptr_ty2

ALLOCATE(ty2::from_obj)
ptr_ty2=>from_obj
from_obj%real1=3.5
CALL MOVE_ALLOC(from_obj,to_obj)
print*,to_obj%real1
to_obj%real1=2
if(ASSOCIATED(ptr_ty2)) then
  print*,'ptr_ty2 is associated'
print*,ptr_ty2%real1
else
  print*,'ptr_ty2 is undefined'
endif
END
