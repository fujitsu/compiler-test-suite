PROGRAM MAIN
 
IMPLICIT NONE
 
TYPE base
  CHARACTER(LEN=8) ::name1
  CHARACTER(LEN=8)::name2
END TYPE
 
TYPE ,EXTENDS(base)::deriv1
  TYPE(base),POINTER::ptr1_base=>NULL()
  INTEGER(KIND=8) ::number1
END TYPE
 
 
TYPE ,EXTENDS(deriv1)::deriv2
  INTEGER(KIND=4)::number2
END TYPE

TYPE tata 
 CLASS(*),POINTER::ptr_base=>NULL()
END TYPE

TYPE(tata)::obj_tata
TYPE(deriv2),TARGET::tar_deriv2

      if(ASSOCIATED(obj_tata%ptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
obj_tata%ptr_base=>ptr_Fun(tar_deriv2)

      if(ASSOCIATED(obj_tata%ptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
contains
 
    FUNCTION ptr_Fun(dmytar_deriv2)
      TYPE(deriv2),TARGET:: dmytar_deriv2
      TYPE(deriv2),POINTER::ptr_Fun
      
      dmytar_deriv2%name1='HELLO' 
      ptr_Fun=>dmytar_deriv2
      print*,ptr_Fun%name1
      return
    END FUNCTION
 
END PROGRAM
