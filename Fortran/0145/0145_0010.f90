 module mod01
 use omp_lib
 integer,save :: TID
 !$OMP threadprivate(TID)
 namelist /nam/ TID
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
 private
 public :: sub02 
 contains
  subroutine sub02
  integer,save::id
  !$omp threadprivate(id)  
  !$OMP PARALLEL                
   write(1,nam)
  !$OMP END PARALLEL
  end subroutine
 end module

 program main
 use mod02
 use mod01
 call omp_set_num_threads(2)
 call sub01()
 call sub02()
 call chk
print *,'pass'
 end program
subroutine chk
integer::TID
namelist /nam/ TID
rewind 1
read(1,nam)
K1=TID
read(1,nam)
if (TID==1 .and. K1==2) then
else
if (TID==2 .and. K1==1) then
else
  print *,101,TID,K1
endif
endif
end
