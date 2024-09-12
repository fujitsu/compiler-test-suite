module m
  integer, private :: i
  !$omp threadprivate(i)
  contains
    subroutine s
      integer :: k1(i), k2(i+1)
      integer, allocatable :: addr_i(:)
      integer :: omp_get_thread_num, omp_get_max_threads
      allocate(addr_i(omp_get_max_threads()))
      !$omp parallel
      addr_i(omp_get_thread_num()+1) = loc(i)
      !$omp end parallel
      if (any(addr_i(2:) == addr_i(1))) print *,1
      if (omp_get_max_threads() == 1) print *,2
      if (size(k1) /= i) print *,3
      if (size(k2) /= i+1) print *,4
    end subroutine s
end

use m
call s
print *,'pass'
end
