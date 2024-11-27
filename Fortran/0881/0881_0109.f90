PROGRAM MAIN

IMPLICIT NONE
 
CLASS(*),POINTER::ptr1
REAL,TARGET::tar_real
CLASS(*),POINTER::ptr2
INTEGER,TARGET::tar_integer
LOGICAL::x

ptr1=>tar_real
ptr2=>tar_integer

x=SAME_TYPE_AS(ptr1,ptr2)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
