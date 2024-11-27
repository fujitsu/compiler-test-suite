PROGRAM MAIN

IMPLICIT NONE

TYPE base
  CHARACTER(LEN=8) ::name1
  CHARACTER(LEN=8)::name2
END TYPE
 
TYPE ,EXTENDS(base)::deriv1
  TYPE(base),POINTER::ptr1_base
  INTEGER(KIND=8) ::number1 
END TYPE 
 
 TYPE ,EXTENDS(deriv1)::deriv2
  INTEGER(KIND=4)::number2
END TYPE 

TYPE con
  CLASS(deriv1),ALLOCATABLE::from_obj
END TYPE

CLASS(base),ALLOCATABLE::to_obj
TYPE(con)::obj

ALLOCATE(deriv2::obj%from_obj)
obj%from_obj%name1='HELLO'
CALL MOVE_ALLOC(obj%from_obj,to_obj)
print*,to_obj%name1
END
