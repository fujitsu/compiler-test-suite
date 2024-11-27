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
 
TYPE(deriv2),ALLOCATABLE::from_obj
call sub(from_obj)
contains
  SUBROUTINE sub(dmy_obj)
    TYPE(deriv2),ALLOCATABLE::dmy_obj
    TYPE con
      CLASS(base),ALLOCATABLE::to_obj
    END TYPE
    TYPE(con)::obj

    ALLOCATE(deriv2::dmy_obj)
    dmy_obj%name1='name1'
    CALL MOVE_ALLOC(dmy_obj,obj%to_obj)
    print*,obj%to_obj%name1
  END SUBROUTINE
 
END
