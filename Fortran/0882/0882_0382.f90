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

CLASS(*),POINTER::ptr_base=>NULL()
TYPE(deriv2),POINTER::ptr_deriv2
call sub(ptr_base,ptr_deriv2)
contains 

    SUBROUTINE sub(dmyptr_base,dmyptr_deriv2)
      CLASS(*),POINTER:: dmyptr_base
      TYPE(deriv2),POINTER:: dmyptr_deriv2

      ALLOCATE(dmyptr_deriv2)
      dmyptr_deriv2%number2=10       

      if(ASSOCIATED(dmyptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      dmyptr_base=>dmyptr_deriv2

      if(ASSOCIATED(dmyptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

    END SUBROUTINE

END PROGRAM
