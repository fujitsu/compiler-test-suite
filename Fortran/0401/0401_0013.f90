module m
  !$omp threadprivate(i1,i2)
  protected i1
  integer,protected :: i2

  protected i3  
  integer,protected :: i4
  !$omp threadprivate(i3,i4)
end

use m
integer :: omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_i1(:)
integer(8),allocatable :: addr_i2(:)
integer(8),allocatable :: addr_i3(:)
integer(8),allocatable :: addr_i4(:)
allocate(addr_i1(omp_get_max_threads()))
allocate(addr_i2(omp_get_max_threads()))
allocate(addr_i3(omp_get_max_threads()))
allocate(addr_i4(omp_get_max_threads()))
!$omp parallel
addr_i1(omp_get_thread_num()+1) = loc(i1)
addr_i2(omp_get_thread_num()+1) = loc(i2)
addr_i3(omp_get_thread_num()+1) = loc(i3)
addr_i4(omp_get_thread_num()+1) = loc(i4)
!$omp end parallel
if (any(addr_i1(2:)==addr_i1(1))) print *,1
if (any(addr_i2(2:)==addr_i2(1))) print *,2
if (any(addr_i3(2:)==addr_i3(1))) print *,3
if (any(addr_i4(2:)==addr_i4(1))) print *,4

print *,'pass'
end
