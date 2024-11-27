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

CLASS(ty1),ALLOCATABLE,TARGET::from_obj
CLASS(ty),ALLOCATABLE,TARGET::to_obj
TYPE(ty1),POINTER::ptr_ty1

ALLOCATE(ty2::from_obj)
ptr_ty1=>from_obj
from_obj%real1=3.5
CALL MOVE_ALLOC(from_obj,to_obj)
print*,to_obj%real1
to_obj%real1=2
if(ASSOCIATED(ptr_ty1)) then
  print*,'ptr_ty1 is associated'
  print*,ptr_ty1%real1
else
  print*,'ptr_ty1 is undefined'
endif
END
