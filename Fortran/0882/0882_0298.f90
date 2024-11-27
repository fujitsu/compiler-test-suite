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

TYPE(ty2),ALLOCATABLE,TARGET::from_obj(:)
CLASS(ty),ALLOCATABLE,TARGET::to_obj(:)

ALLOCATE(ty2::from_obj(7))
from_obj%real1=3.9
CALL MOVE_ALLOC(from_obj,to_obj)
print*,to_obj%real1
END
