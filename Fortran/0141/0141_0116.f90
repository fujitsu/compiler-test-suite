 module mod01
 integer,save :: TID
 !$OMP threadprivate(TID)
 end module

 MODULE mod02
 use mod01
 private
 public :: sub01 
 contains
  subroutine sub01
  use omp_lib
  !$OMP PARALLEL                
   TID=omp_get_thread_num() + 1
  !$OMP END PARALLEL
  end subroutine
 end module

 program main
 use mod02
 call sub01()
call sub02
print *,'pass'
 end program

subroutine sub02
use mod01
call sub
contains
subroutine sub
  use omp_lib
  !$OMP PARALLEL                
   if (TID/=omp_get_thread_num() + 1) print *,102
  !$OMP END PARALLEL
end subroutine
end
