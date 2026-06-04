module m
  integer,bind(c) :: i(1000),j(1000),k(1000)
  !$omp threadprivate(k)
  !$omp threadprivate(i)
contains
  subroutine s
    integer omp_get_thread_num
    !$omp parallel
    i = omp_get_thread_num()
    j = omp_get_thread_num()
    k = omp_get_thread_num()
    !$omp end parallel
    !$omp parallel
    if (any(i/=omp_get_thread_num())) print *,1
    if (any(k/=omp_get_thread_num())) print *,3
    !$omp end parallel
  end subroutine
end

use m
call s
print *,'pass'
end
