PROGRAM MAIN

IMPLICIT NONE

TYPE base
  CHARACTER(len=8)::c
END TYPE

TYPE,EXTENDS(base)::deriv
  REAL(kind=8)::real1
END TYPE

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
  TYPE deriv
    integer a
  END TYPE
  
  LOGICAL::x
  CLASS(base),POINTER::dmy1
  TYPE(deriv)::obj_deriv

  x=EXTENDS_TYPE_OF(dmy1,obj_deriv)
  if(x .eqv. .false.) then
    print*,'pass'
  else
    print*,'fail'
  endif
END SUBROUTINE

END PROGRAM
