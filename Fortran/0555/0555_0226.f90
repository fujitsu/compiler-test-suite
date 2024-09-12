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
 
TYPE tata 
 CLASS(base),POINTER::ptr_base
END TYPE

TYPE(tata)::obj_tata
obj_tata%ptr_base=>NULL()
if(ASSOCIATED(obj_tata%ptr_base)) then
 print*,"Pointer is associated"
else
 print*,"pointer is not associated"
end if
END
