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

CLASS(deriv1),POINTER::ptr_deriv1
CLASS(deriv2),POINTER::ptr_deriv2

ALLOCATE(ptr_deriv2)
ALLOCATE(ptr_deriv2%ptr1_base)
call sub(ptr_deriv1,ptr_deriv2)
contains 

    SUBROUTINE sub(dmyptr_deriv1,dmytar_deriv2)
      CLASS(deriv1),POINTER:: dmyptr_deriv1
      CLASS(deriv2),TARGET:: dmytar_deriv2
      TYPE(deriv1)::obj

 
      dmytar_deriv2%ptr1_base%name1='test'       
      dmyptr_deriv1=>dmytar_deriv2      
      obj=dmyptr_deriv1
      print*,obj%ptr1_base%name1
    END SUBROUTINE

END PROGRAM
