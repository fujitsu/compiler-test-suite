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

CLASS(*),POINTER::ptr_deriv1 => null()
CLASS(deriv2),POINTER::ptr_deriv2 => null()
call sub(ptr_deriv1,ptr_deriv2)
contains 

    SUBROUTINE sub(dmyptr_deriv1,dmyptr_deriv2)
      CLASS(*),POINTER:: dmyptr_deriv1
      CLASS(deriv2),POINTER:: dmyptr_deriv2
  
      ALLOCATE(deriv2::dmyptr_deriv2)
 
      if(ASSOCIATED(dmyptr_deriv1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      dmyptr_deriv1=>dmyptr_deriv2      

      if(ASSOCIATED(dmyptr_deriv1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

    END SUBROUTINE

END PROGRAM
