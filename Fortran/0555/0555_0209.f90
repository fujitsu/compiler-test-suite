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

LOGICAL::ptr_status
CLASS(base),POINTER::arrptr_base(:,:,:,:)

arrptr_base=>NULL()
ptr_status=ASSOCIATED(arrptr_base)

print*,ptr_status

END 
