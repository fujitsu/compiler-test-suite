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

CLASS(*),POINTER::arrptr_base(:,:) => null()
CLASS(*),POINTER::ptr(:,:)
TYPE(deriv2),TARGET::arrtar_deriv2(5,6)

arrtar_deriv2%name2='NORMAL'
arrtar_deriv2(2:,3:)%name2='SPECIAL'

ptr=>arrtar_deriv2

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

arrptr_base=>ptr

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

END PROGRAM

