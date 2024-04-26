 module mod01
 use omp_lib
 integer,save :: TID
 PRIVATE
 !$OMP threadprivate(TID)
public::sub01
 contains
 subroutine sub01()
 TID=0
 !$omp parallel
  TID=omp_get_thread_num() +1
 !$omp end parallel
 end subroutine
 end module

 program main
 use omp_lib
 use mod01
 call omp_set_num_threads(2)
 call sub01()
print *,'pass'
 end program
