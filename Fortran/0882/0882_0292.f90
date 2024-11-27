MODULE ty_MODULE
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
 
END MODULE

PROGRAM MAIN

use ty_MODULE 
 
CLASS(ty2),ALLOCATABLE,TARGET::from_obj
CLASS(ty1),ALLOCATABLE::to_obj
    
ALLOCATE(ty2::from_obj)
from_obj%ll=4.9
call sub(from_obj,to_obj)
print*,to_obj%ll
contains
  SUBROUTINE sub(dmy_from,dmy_to)
    CLASS(ty2),ALLOCATABLE,TARGET::dmy_from
    CLASS(ty1),ALLOCATABLE,TARGET::dmy_to
    
    CALL MOVE_ALLOC(dmy_from,dmy_to)
   END SUBROUTINE
 
END
