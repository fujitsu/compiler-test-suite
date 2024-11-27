PROGRAM MAIN

IMPLICIT NONE

TYPE base
  CHARACTER(LEN=8) ::name1
  INTEGER(kind=8)::ii
  CHARACTER(LEN=8)::name2
END TYPE
 
TYPE ,EXTENDS(base)::deriv1
  TYPE(base),POINTER::ptr1_base
  INTEGER(KIND=8) ::number1 
END TYPE 
 
 TYPE ,EXTENDS(deriv1)::deriv2
  INTEGER(KIND=4)::number2
END TYPE 

TYPE(deriv2),ALLOCATABLE::from_obj(:)
CLASS(base),ALLOCATABLE,TARGET::to_obj(:)

ALLOCATE(deriv2::from_obj(4))
from_obj%ii=3
CALL MOVE_ALLOC(from_obj,to_obj)
print*,to_obj%ii

END
