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
TYPE(deriv2),POINTER::arrtar_deriv2(:)
call sub(arrptr_base,arrtar_deriv2)
contains 

    SUBROUTINE sub(arrdmyptr_base,arrdmytar_deriv2)
      CLASS(*),POINTER:: arrdmyptr_base(:)
      TYPE(deriv2),POINTER:: arrdmytar_deriv2(:)

      allocate(arrdmytar_deriv2(5))
      arrdmytar_deriv2%name1='HELLO'       
      arrdmytar_deriv2(1)%name1='BYE'       

      if(ASSOCIATED(arrdmyptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

      arrdmyptr_base=>arrdmytar_deriv2      

      if(ASSOCIATED(arrdmyptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

    END SUBROUTINE

END PROGRAM
