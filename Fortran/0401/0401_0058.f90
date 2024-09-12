module m
  protected i
  bind(c) i
  !$omp threadprivate(i)
contains
  subroutine m2s
    integer omp_get_thread_num
    !$omp parallel
    i = omp_get_thread_num()
    !$omp end parallel
    !$omp parallel
    if (i /= omp_get_thread_num()) print *,1
    !$omp end parallel
  end subroutine m2s
end module m

use m
integer omp_get_thread_num, omp_get_max_threads
integer(8), allocatable ::  addr_i(:)
allocate(addr_i(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
!$omp end parallel
if (any(addr_i(1) == addr_i(2:))) print *,2

call m2s

print *,'pass'

end
