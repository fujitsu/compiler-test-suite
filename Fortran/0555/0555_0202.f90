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

CLASS(base),POINTER::arrptr_base(:)
TYPE(deriv2),TARGET::arrtar_deriv2(5)
call sub(arrptr_base,arrtar_deriv2)
contains 

    SUBROUTINE sub(arrdmyptr_base,arrdmytar_deriv2)
      CLASS(base),POINTER:: arrdmyptr_base(:)
      TYPE(deriv2),TARGET:: arrdmytar_deriv2(5)
      TYPE(base)::obj(5) 
      arrdmytar_deriv2%name1='HELLO'       
      arrdmytar_deriv2(1)%name1='BYE'       
      arrdmyptr_base=>arrdmytar_deriv2      
      obj(1)=arrdmyptr_base(1)
      print*,obj(1)%name1
    END SUBROUTINE

END PROGRAM
