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

CLASS(base),POINTER::arrptr_base(:,:)
TYPE(deriv2),TARGET::arrtar_deriv2(5,6)

arrptr_base=>poly_arrptr_Fun(arrtar_deriv2)
print*,arrptr_base%name2

contains 

    FUNCTION poly_arrptr_Fun(arrdmytar_deriv2)
      TYPE(deriv2),TARGET:: arrdmytar_deriv2(5,6)
      CLASS(deriv1),POINTER::poly_arrptr_Fun(:,:)

      arrdmytar_deriv2%name2='NORMAL'
      arrdmytar_deriv2(2:,3:)%name2='SPECIAL'
      poly_arrptr_Fun=>arrdmytar_deriv2(2:,3:)
      return
    END FUNCTION

END PROGRAM
