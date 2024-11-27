PROGRAM MAIN

IMPLICIT NONE
 
CLASS(*),POINTER::ptr
INTEGER,TARGET::tar_int
LOGICAL::x

tar_int=2
ptr=>tar_int
x=SAME_TYPE_AS(ptr,ptr)
if(x .eqv. .true.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
