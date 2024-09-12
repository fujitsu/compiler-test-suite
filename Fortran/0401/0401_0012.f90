module m
  !$omp threadprivate(i,j,k)
  integer i,j
  integer, allocatable :: k(:)
  allocatable j(:)
end

use m
integer :: omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_i(:)
allocate(addr_i(omp_get_max_threads()))
!$omp parallel
allocate(j(1))
allocate(k(1))
j(1) = omp_get_thread_num()
k(1) = omp_get_thread_num()
addr_i(omp_get_thread_num()+1) = loc(i)
!$omp end parallel
!$omp parallel
if (j(1) /= omp_get_thread_num()) print *,1
if (k(1) /= omp_get_thread_num()) print *,2
!$omp end parallel
if (any(addr_i(2:)==addr_i(1))) print *,3

print *,'pass'
end
