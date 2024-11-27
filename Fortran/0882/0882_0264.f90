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

CLASS(base),ALLOCATABLE::to_obj
call sub(to_obj)
print*,to_obj%name2
contains
  SUBROUTINE sub(dmy_obj)
    CLASS(base),ALLOCATABLE,TARGET::dmy_obj
    TYPE(deriv2),ALLOCATABLE::from_obj
    ALLOCATE(deriv2::from_obj)
    from_obj%name2='name2'
    CALL MOVE_ALLOC(from_obj,dmy_obj)
  END SUBROUTINE

END
