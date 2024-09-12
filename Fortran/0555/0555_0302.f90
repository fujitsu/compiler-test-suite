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

CLASS(*),POINTER::arrptr_base(:,:)=>null()
TYPE(deriv2),TARGET::arrtar_deriv2(5,6)

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

arrptr_base=>poly_arrptr_Fun(arrtar_deriv2)

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

contains 

    FUNCTION poly_arrptr_Fun(arrdmytar_deriv2)
      TYPE(deriv2),TARGET:: arrdmytar_deriv2(5,6)
      TYPE(deriv2),POINTER::poly_arrptr_Fun(:,:)

      arrdmytar_deriv2%name2='NORMAL'
      arrdmytar_deriv2(2:,3:)%name2='SPECIAL'
      poly_arrptr_Fun=>arrdmytar_deriv2(2:,3:)
      print*,poly_arrptr_Fun%name2
      return
    END FUNCTION

END PROGRAM
