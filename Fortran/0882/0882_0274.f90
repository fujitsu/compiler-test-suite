MODULE mod3
 
IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv1
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE
 
TYPE ,EXTENDS(deriv1)::deriv2
  CHARACTER(LEN=8) :: name1
  TYPE(deriv1),POINTER::ptr1_deriv1
  REAL(KIND=8) ::real3
END TYPE
 
TYPE ,EXTENDS(deriv2)::deriv3
  CHARACTER(LEN=8)::name2
  TYPE(deriv2)::obj1_deriv2
  INTEGER(KIND=8) :: int3
  REAL(KIND=8) ::real4
END TYPE
 
TYPE ,EXTENDS(deriv3)::deriv4
  INTEGER(KIND=8) :: int4
  REAL(KIND=8) ::real5
END TYPE
 
END MODULE

PROGRAM MAIN
 
use mod3
 
TYPE(deriv4),ALLOCATABLE,TARGET::from_obj

ALLOCATE(from_obj)
from_obj%real3=2.98
call sub(from_obj)
contains
  SUBROUTINE sub(dmy_obj)
    TYPE(deriv4),ALLOCATABLE,TARGET::dmy_obj
    CLASS(deriv2),ALLOCATABLE,TARGET::to_obj
    TYPE(deriv4),POINTER::ptr

    ptr=>dmy_obj
    CALL MOVE_ALLOC(dmy_obj,to_obj)
    print*,to_obj%real3
    to_obj%real3=0.5
    if(ASSOCIATED(ptr)) then
      print*,'ptr is associated'
      print*,ptr%real3
    else
      print*,'ptr is undefined'
    endif
    
  END SUBROUTINE
 
END
