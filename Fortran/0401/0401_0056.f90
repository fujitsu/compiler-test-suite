module m1
  !$omp threadprivate(i)
end module m1

module m2
  use m1
  private i
contains
  subroutine m2s
    integer omp_get_thread_num, omp_get_max_threads
    integer(8), allocatable ::  addr_i(:)
    allocate(addr_i(omp_get_max_threads()))
    !$omp parallel
    addr_i(omp_get_thread_num()+1) = loc(i)
    !$omp end parallel
    if (any(addr_i(1) == addr_i(2:))) print *,1
  end subroutine m2s
end module m2

use m1
use m2, only: m2s
integer omp_get_thread_num, omp_get_max_threads
integer(8), allocatable ::  addr_i(:)
allocate(addr_i(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
!$omp end parallel
if (any(addr_i(1) == addr_i(2:))) print *,1

call m2s

print *,'pass'
end
