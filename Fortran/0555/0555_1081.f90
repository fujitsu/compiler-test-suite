MODULE m1

IMPLICIT NONE
 
TYPE base
  CHARACTER(LEN=8) ::name1='a1'
  CHARACTER(LEN=8)::name2='a'
END TYPE
 
TYPE ,EXTENDS(base)::deriv1
  INTEGER(KIND=8) ::number1 =2
END TYPE 

TYPE ,EXTENDS(deriv1)::deriv2
  INTEGER(KIND=8)::number2=2
END TYPE 
END MODULE

PROGRAM MAIN
use m1

interface

function poly_ptr_fun(dmytar_deriv2,dmy2)
import deriv2
TYPE(deriv2),TARGET:: dmytar_deriv2
TYPE(deriv2),TARGET:: dmy2
CLASS(deriv2),POINTER:: poly_ptr_Fun
end function

function ptr_fun(dmy2)
import deriv2
      TYPE(deriv2),TARGET:: dmy2
      CLASS(deriv2),POINTER:: ptr_Fun
end function

end interface

TYPE(deriv2),TARGET::tar_deriv2

tar_deriv2%name1='tar_d2'

print*,'entry function',[ptr_Fun(tar_deriv2)]

END PROGRAM

FUNCTION poly_ptr_Fun(dmytar_deriv2,dmy2)
    use m1
    TYPE(deriv2),TARGET:: dmytar_deriv2
    TYPE(deriv2),TARGET:: dmy2
    CLASS(deriv2),POINTER::poly_ptr_Fun
    CLASS(deriv2),POINTER:: ptr_Fun
    dmy2%name1='dummy'
    dmytar_deriv2=dmy2
    poly_ptr_Fun=>dmytar_deriv2
    
    entry ptr_fun(dmy2)
    ptr_fun=>dmy2
    return
END
