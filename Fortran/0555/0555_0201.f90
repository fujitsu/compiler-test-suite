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
TYPE(deriv2),POINTER::arrptr_deriv2(:)
call sub(arrptr_base,arrptr_deriv2)
contains 

    SUBROUTINE sub(arrdmyptr_base,arrdmyptr_deriv2)
      CLASS(base),POINTER:: arrdmyptr_base(:)
      TYPE(deriv2),POINTER:: arrdmyptr_deriv2(:)
      TYPE(base)::obj(5) 
      ALLOCATE(arrdmyptr_deriv2(5))
      arrdmyptr_deriv2%name1='HELLO'       
      arrdmyptr_deriv2(1)%name1='BYE'       
      arrdmyptr_base=>arrdmyptr_deriv2      
      obj(1)=arrdmyptr_base(1)
      print*,obj(1)%name1
    END SUBROUTINE

END PROGRAM
