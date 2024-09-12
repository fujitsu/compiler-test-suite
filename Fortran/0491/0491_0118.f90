 module dimension
 implicit none
 INTEGER, SAVE :: tid,yid
 !$OMP threadprivate(tid,yid)
 contains
 subroutine init
 tid=0
 !$OMP PARALLEL
 !$OMP END PARALLEL
 end subroutine
 end module

 MODULE particles
 USE dimension
 IMPLICIT NONE
 save
 private
 public yid
 PUBLIC :: step_a
 contains
 subroutine step_a
 !$OMP PARALLEL
 !$OMP END PARALLEL
 end subroutine
 end module

 program main
 use particles
 use dimension
 call init()
 call step_a()
print *,'pass'
 end program
