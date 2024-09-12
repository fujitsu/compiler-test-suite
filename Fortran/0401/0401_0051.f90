module m
  !$omp threadprivate(i1,jj1)
  integer, bind(c) :: i1,jj1
  !$omp threadprivate(i2,j2)
  integer, bind(c) :: i2,j2
end

use m
integer :: omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_i1(:)
integer(8),allocatable :: addr_jj1(:)
integer(8),allocatable :: addr_i2(:)
integer(8),allocatable :: addr_j2(:)
allocate(addr_i1(omp_get_max_threads()))
allocate(addr_jj1(omp_get_max_threads()))
allocate(addr_i2(omp_get_max_threads()))
allocate(addr_j2(omp_get_max_threads()))
!$omp parallel
addr_i1(omp_get_thread_num()+1) = loc(i1)
addr_jj1(omp_get_thread_num()+1) = loc(jj1)
addr_i2(omp_get_thread_num()+1) = loc(i2)
addr_j2(omp_get_thread_num()+1) = loc(j2)
!$omp end parallel
if (any(addr_i1(2:)==addr_i1(1))) print *,11
if (any(addr_jj1(2:)==addr_jj1(1))) print *,21
if (any(addr_i2(2:)==addr_i2(1))) print *,12
if (any(addr_j2(2:)==addr_j2(1))) print *,22
print *,'pass'
end
