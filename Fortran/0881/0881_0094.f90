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

PROGRAM MAIN

use MODULE1

IMPLICIT NONE
 
CLASS(base),POINTER:: ptr_base(:)
CLASS(deriv1),POINTER:: ptr_deriv(:)

ALLOCATE(base::ptr_base(3))
ALLOCATE(deriv1::ptr_deriv(3))

call sub(ptr_base,ptr_deriv)
contains 
SUBROUTINE sub(dum1,dum2)
  LOGICAL::x
  CLASS(*)::dum1(3)
  CLASS(deriv1),TARGET::dum2(3)
  x=SAME_TYPE_AS(dum1,dum2)
  if(x .eqv. .false.) then
    print*,'pass'
  else
    print*,'fail'
  endif
END SUBROUTINE

END PROGRAM
