 module mod01
 use omp_lib
 integer,save :: TID
 !$OMP threadprivate(TID)
 contains
 subroutine sub01()
 TID=0
 !$omp parallel
  TID=omp_get_thread_num() +1
 !$omp end parallel
 end subroutine
 end module

 MODULE mod02
 use mod01,YID=>TID
 save
 private
 public :: sub02 
 contains
  subroutine sub02
  integer,save::id
  !$omp threadprivate(id)  
  !$OMP PARALLEL                
   id=omp_get_thread_num() + 1
   if (id/=YID) print *,'NG :', id ,YID
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
