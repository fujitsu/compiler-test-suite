PROGRAM MAIN

IMPLICIT NONE
 
CLASS(*),POINTER::ptr
INTEGER,TARGET::tar_int
LOGICAL::x

tar_int=2
ptr=>tar_int
x=EXTENDS_TYPE_OF(ptr,ptr)
if(x .eqv. .true.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
