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

CLASS(*),POINTER::ptr_base => null()
TYPE(deriv2),TARGET::tar_deriv2

      if(ASSOCIATED(ptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

ptr_base=>poly_ptr_Fun(tar_deriv2)

      if(ASSOCIATED(ptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 
contains 

    FUNCTION poly_ptr_Fun(dmytar_deriv2)
      TYPE(deriv2),TARGET:: dmytar_deriv2
      CLASS(*),POINTER::poly_ptr_Fun

      poly_ptr_Fun=>dmytar_deriv2
      return
    END FUNCTION

END PROGRAM
