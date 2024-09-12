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

CLASS(deriv1),POINTER::ptr_base
TYPE(deriv2),TARGET::tar_deriv2

tar_deriv2%name1='name1'
tar_deriv2%name2='name2'
ptr_base=>poly_ptr_Fun(tar_deriv2)
print*,ptr_base%name1
print*,ptr_base%name2
contains 

FUNCTION poly_ptr_Fun(dmytar_deriv2)
TYPE(deriv2),TARGET:: dmytar_deriv2
CLASS(deriv1),POINTER::poly_ptr_Fun
    dmytar_deriv2%name1='name3'
    dmytar_deriv2%name2='name4'
    poly_ptr_Fun=>dmytar_deriv2
    print*,dmytar_deriv2%name1
    print*,poly_ptr_Fun%name2
END FUNCTION

END PROGRAM
