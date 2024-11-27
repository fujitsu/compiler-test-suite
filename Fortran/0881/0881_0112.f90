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

call sub1
contains 
SUBROUTINE sub1
  CLASS(base),POINTER:: ptr_base
  CLASS(base),POINTER:: ptr_deriv

  ALLOCATE(deriv::ptr_deriv)
  ptr_base=>ptr_deriv
  call sub2(ptr_base)

END SUBROUTINE

SUBROUTINE sub2(dmy1)
  LOGICAL::x
  TYPE deriv
    integer a
  END TYPE
  CLASS(base),POINTER::dmy1
  TYPE(deriv)::obj_deriv
  x=SAME_TYPE_AS(dmy1,obj_deriv)
  if(x .eqv. .false.) then
    print*,'pass'
  else
    print*,'fail'
  endif
END SUBROUTINE

END PROGRAM
