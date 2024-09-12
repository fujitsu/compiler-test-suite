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
 CLASS(base),POINTER::ptr_base(:,:,:,:)
END TYPE

TYPE(tata)::obj_tata
TYPE(deriv2),TARGET::tar_deriv2(2,2,4,4)
 
tar_deriv2%name1='name1'
obj_tata%ptr_base=>ptr_Fun(tar_deriv2)
print*, obj_tata%ptr_base%name1
contains
 
    FUNCTION ptr_Fun(dmytar_deriv2)
      TYPE(deriv2),TARGET:: dmytar_deriv2(2,2,3,3)
      CLASS(deriv2),POINTER::ptr_Fun(:,:,:,:)  
      ptr_Fun=>dmytar_deriv2
      return
    END FUNCTION
 
END PROGRAM
