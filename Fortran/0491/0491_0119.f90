 module mod01
 use omp_lib
 integer,save :: TID,YID
 !$OMP threadprivate(TID,YID)
 contains
 subroutine sub01()
 TID=0
 YID=0
 !$omp parallel
  TID=omp_get_thread_num() +1
  YID=omp_get_thread_num() +1
 !$omp end parallel
 end subroutine
 end module

 MODULE mod02
 use mod01
 save
 private
 public :: sub02 
 PUBLIC :: TID
 contains
  subroutine sub02
  integer,save::id
  !$omp threadprivate(id)  
  !$OMP PARALLEL                
   id=omp_get_thread_num() + 1
   if (id/=TID) print *,'NG TID :', id ,TID
   if (id/=YID) print *,'NG YID :', id ,TID
  !$OMP END PARALLEL
  end subroutine
 end module

 program main
 use mod02
 use mod01
  integer,save::id
  !$omp threadprivate(id)  
 call omp_set_num_threads(2)
 call sub01()
 call sub02()
  !$OMP PARALLEL                
   id=omp_get_thread_num() + 1
   if (id/=TID) print *,'NG TID :', id ,TID
   if (id/=YID) print *,'NG YID :', id ,TID
  !$OMP END PARALLEL
print *,'pass'
 end program
