 module mod01
 use omp_lib
 integer,save :: TID
 !$OMP threadprivate(TID)
 public:: sub01,TID
 contains
 subroutine sub01()
 TID=0
 !$omp parallel
  TID=omp_get_thread_num() +1
 !$omp end parallel
 end subroutine
 end module

 MODULE mod02
 use mod01
 save
 public :: sub02 
 contains
  subroutine sub02
 use omp_lib
  integer,save::id
  !$omp threadprivate(id)  
  !$OMP PARALLEL                
   id=omp_get_thread_num() + 1
  !$OMP END PARALLEL
  end subroutine
 end module

 program main
 use mod02
 use mod01
 call omp_set_num_threads(2)
 call sub01()
 call sub02()
print *,'pass'
 end program
