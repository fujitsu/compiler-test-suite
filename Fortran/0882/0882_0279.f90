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

CLASS(deriv1),ALLOCATABLE::to_obj
call sub(to_obj)
contains
  SUBROUTINE sub(dmy_obj)
    CLASS(deriv1),ALLOCATABLE::dmy_obj
    CLASS(deriv2),ALLOCATABLE::from_obj
    
    ALLOCATE(deriv2::from_obj)
    from_obj%number1=100
    CALL MOVE_ALLOC(from_obj,dmy_obj)
    print*,dmy_obj%number1
  END SUBROUTINE

END
