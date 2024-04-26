 module mod01
 integer,save :: TID
 !$OMP threadprivate(TID)
 end module

 MODULE mod02
 use mod01
 private
 public :: sub02 
 contains
  subroutine sub02
  use omp_lib
  !$OMP PARALLEL                
   TID=omp_get_thread_num() + 1
  !$OMP END PARALLEL
  end subroutine
 end module

 program main
 use mod02
 call sub02()
print *,'pass'
 end program
