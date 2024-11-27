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

TYPE con1
  CLASS(*),ALLOCATABLE::from_obj(:)
END TYPE

TYPE con2
  CLASS(*),ALLOCATABLE::to_obj(:)
END TYPE

TYPE(con1)::obj
TYPE(con2)::obj1


ALLOCATE(deriv2::obj%from_obj(5))

   if(ALLOCATED(obj1%to_obj)) then
     print*,'before move_alloc to_obj is allocated'
   else
     print*,'before move_alloc to_obj is not allocated yet'
   endif

CALL MOVE_ALLOC(obj%from_obj,obj1%to_obj)

   if(ALLOCATED(obj1%to_obj)) then
     print*,'after move_alloc to_obj is allocated'
   else
     print*,'after move_alloc to_obj is not allocated'
   endif
END
