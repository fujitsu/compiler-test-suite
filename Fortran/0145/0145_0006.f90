 module mod01
 use omp_lib
 integer,save :: TID
 !$OMP threadprivate(TID)
 contains
 subroutine sub01()
  integer,save::id
  !$omp threadprivate(id)  
 !$omp parallel
   id=omp_get_thread_num() + 1
   if (id/=TID) print *,'NG :', id ,TID
 !$omp end parallel
 end subroutine
 end module

 MODULE mod02
 use mod01
 save
 private
 public :: sub02 
 contains
  subroutine sub02
  !$OMP PARALLEL                
  TID=omp_get_thread_num() +1
  !$OMP END PARALLEL
  end subroutine
 end module

 program main
 use mod02
 use mod01
 call omp_set_num_threads(2)
 call sub02()
 call sub01()
print *,'pass'
 end program
