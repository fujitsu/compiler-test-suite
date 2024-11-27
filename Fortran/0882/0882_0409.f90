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

CLASS(*),POINTER::arrptr_base(:) => NULL()
call sub(arrptr_base)
contains 
    SUBROUTINE sub(arrdmyptr_base)
      CLASS(*),POINTER:: arrdmyptr_base(:)
      CLASS(deriv2),POINTER:: arrdmyptr_deriv2(:)

      ALLOCATE(arrdmyptr_deriv2(5))
      arrdmyptr_deriv2%name1='HELLO'
      arrdmyptr_deriv2(1)%name1='BYE'       

      if(ASSOCIATED(arrdmyptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      arrdmyptr_base=>arrdmyptr_deriv2      

      if(ASSOCIATED(arrdmyptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

    END SUBROUTINE

END PROGRAM
