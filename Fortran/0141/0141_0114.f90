 module mod01
 use omp_lib
 integer,save,PRIVATE :: TID  
 !$OMP threadprivate(TID)
public::sub01
 contains
 subroutine sub01()
 !$omp parallel
  TID=omp_get_thread_num() +1
 !$omp end parallel
 end subroutine
 end module

 program main
 use mod01
 call sub01()
print *,'pass'
 end program
