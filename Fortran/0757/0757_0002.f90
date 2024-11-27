  module m1
  common /T/ a
  end 
  module mm1
  use m1
!$OMP THREADPRIVATE(/T/)
  common /T/ aa
contains
subroutine mm1s
integer omp_get_thread_num
aa=omp_get_thread_num()+2
end subroutine
  end
use mm1
integer omp_get_thread_num
call mm1s
if (aa/=omp_get_thread_num()+2) print *,112
if (a/=omp_get_thread_num()+2) print *,113
print *,'pass'
end
