PROGRAM MAIN

IMPLICIT NONE

LOGICAL::x

TYPE deriv
  INTEGER::a
END TYPE

CLASS(*),POINTER::ptr
CHARACTER(len=6),TARGET::tar_char
TYPE(deriv)::deriv_obj

tar_char='ABC'
ptr=>tar_char
x=EXTENDS_TYPE_OF(ptr,deriv_obj)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
