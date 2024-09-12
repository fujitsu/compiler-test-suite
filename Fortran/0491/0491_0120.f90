 module dimension
 implicit none
 INTEGER, SAVE :: yid
 !$OMP threadprivate(yid)
 end module

 MODULE particles
 USE dimension
 IMPLICIT NONE
 public yid
 end module

 program main
 use particles
 use dimension
 yid=1
print *,'pass'
 end program
