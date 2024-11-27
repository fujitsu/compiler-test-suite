MODULE MODULE1

IMPLICIT NONE

LOGICAL::x

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE

TYPE ,EXTENDS(base)::deriv
  TYPE(base)::obj
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE

TYPE ,EXTENDS(deriv)::deriv1
  TYPE(deriv)::obj1
  INTEGER(KIND=8) :: int3
  REAL(KIND=8) ::real3
END TYPE

END MODULE

PROGRAM TEST
USE MODULE1

implicit none 

TYPE(deriv)::deriv_obj
CLASS(base),POINTER::actual_arg1
TYPE(deriv)::actual_arg2

INTERFACE 
 function pls(dmy1,dmy2)
   use MODULE1
   CLASS(base),POINTER::dmy1
   TYPE(deriv),TARGET,INTENT(in):: dmy2
   CLASS(base),POINTER::pls
 END function
END INTERFACE

deriv_obj%int1=3
actual_arg2%int1=6
x=SAME_TYPE_AS(pls(actual_arg1,actual_arg2),deriv_obj)
if(x .eqv. .true.) then
  print*,'pass'
else
  print*,'fail'
endif
end

function pls(dmy1,dmy2)
   use MODULE1
   CLASS(base),POINTER::dmy1
   TYPE(deriv),TARGET,INTENT(in):: dmy2
   CLASS(base),POINTER::pls

   dmy1=>dmy2
   dmy1%int1=dmy1%int1+dmy2%int1
   pls=>dmy1
end function
