MODULE m1

IMPLICIT NONE

TYPE base
  CHARACTER(LEN=8) ::name1
  CHARACTER(LEN=8)::name2
END TYPE

TYPE ,EXTENDS(base)::deriv1
  TYPE(base),POINTER::ptr1_base
  INTEGER ::number1 
END TYPE 

TYPE ,EXTENDS(deriv1)::deriv2
  INTEGER(KIND=4)::number2
END TYPE 
END MODULE

PROGRAM MAIN
use m1

interface
function poly_ptr_fun(dmytar_deriv2,dmy2)
use m1
TYPE(deriv2),TARGET:: dmytar_deriv2
      TYPE(deriv2),TARGET:: dmy2
CLASS(*),POINTER::poly_ptr_Fun
end function
function ptr_Fun(dmy2)
use m1
      TYPE(deriv2),TARGET:: dmy2
      CLASS(*),POINTER::ptr_Fun
end function

end interface

TYPE(deriv2),TARGET::tar_deriv2

tar_deriv2%name1='tar_d2'

associate(a=>ptr_Fun(tar_deriv2))
 select type(a)
  type is(deriv2)
   print*,'pass'
 end select
end associate

END PROGRAM

FUNCTION poly_ptr_Fun(dmytar_deriv2,dmy2)
    use m1
    TYPE(deriv2),TARGET:: dmytar_deriv2
    TYPE(deriv2),TARGET:: dmy2
    CLASS(*),POINTER::poly_ptr_Fun
    CLASS(*),POINTER::ptr_Fun
    dmy2%name1='dummy'
    dmytar_deriv2=dmy2
    poly_ptr_Fun=>dmytar_deriv2

    entry ptr_Fun(dmy2)
    ptr_Fun=>dmy2
    return
END
