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

CLASS(*),ALLOCATABLE::to_obj
call sub(to_obj)
contains
  SUBROUTINE sub(dmy_obj)
    CLASS(*),ALLOCATABLE::dmy_obj
    TYPE con
      INTEGER,ALLOCATABLE::from_obj
    END TYPE
 
    TYPE(con)::obj
 
    ALLOCATE(obj%from_obj)
    obj%from_obj=3

   if(ALLOCATED(dmy_obj)) then
     print*,'before move_alloc to_obj is allocated'
   else
     print*,'before move_alloc to_obj is not allocated'
   endif

    CALL MOVE_ALLOC(obj%from_obj,dmy_obj)

   if(ALLOCATED(dmy_obj)) then
     print*,'after move_alloc to_obj is allocated'
   else
     print*,'after move_alloc to_obj is not allocated'
   endif

  END SUBROUTINE

END
