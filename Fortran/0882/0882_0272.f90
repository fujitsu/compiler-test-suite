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
 
TYPE(ty2),ALLOCATABLE::from_obj
CLASS(ty1),ALLOCATABLE::to_obj
call sub(from_obj,to_obj)
print*,to_obj%ll
contains
  SUBROUTINE sub(dmy_from,dmy_to)
    TYPE(ty2),ALLOCATABLE::dmy_from
    CLASS(ty1),ALLOCATABLE,TARGET::dmy_to
 
    ALLOCATE(ty2::dmy_from)
    dmy_from%ll=5.3
    CALL MOVE_ALLOC(dmy_from,dmy_to)
  END SUBROUTINE
 
END
