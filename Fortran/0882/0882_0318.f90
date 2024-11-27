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
 
CLASS(deriv1),ALLOCATABLE::from_obj(:)
call sub(from_obj)
contains
  SUBROUTINE sub(dmy_obj)
    CLASS(deriv1),ALLOCATABLE::dmy_obj(:)
    CLASS(base),ALLOCATABLE,TARGET::to_obj(:)
 
    ALLOCATE(deriv2::dmy_obj(8))
    dmy_obj%name2='value'
    CALL MOVE_ALLOC(dmy_obj,to_obj)
    print*,to_obj%name2
  END SUBROUTINE
 
END
