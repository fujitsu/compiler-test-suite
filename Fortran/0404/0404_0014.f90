module m
!$omp threadprivate(i1,j1,k1)
integer,bind(c) :: j1(100000)
end module

subroutine s1
use m
integer :: omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_i1(:)
integer(8),allocatable :: addr_j1(:)
integer(8),allocatable :: addr_k1(:)
integer(8),allocatable :: addr_i2(:)
integer(8),allocatable :: addr_j2(:)
integer(8),allocatable :: addr_k2(:)
integer(8),allocatable :: addr_i3(:)
integer(8),allocatable :: addr_j3(:)
integer(8),allocatable :: addr_k3(:)
integer(8),allocatable :: addr_i4(:)
integer(8),allocatable :: addr_j4(:)
integer(8),allocatable :: addr_k4(:)
integer(8),allocatable :: addr_i5(:)
integer(8),allocatable :: addr_j5(:)
integer(8),allocatable :: addr_k5(:)
allocate(addr_i1(omp_get_max_threads()))
allocate(addr_j1(omp_get_max_threads()))
allocate(addr_k1(omp_get_max_threads()))
allocate(addr_i2(omp_get_max_threads()))
allocate(addr_j2(omp_get_max_threads()))
allocate(addr_k2(omp_get_max_threads()))
allocate(addr_i3(omp_get_max_threads()))
allocate(addr_j3(omp_get_max_threads()))
allocate(addr_k3(omp_get_max_threads()))
allocate(addr_i4(omp_get_max_threads()))
allocate(addr_j4(omp_get_max_threads()))
allocate(addr_k4(omp_get_max_threads()))
allocate(addr_i5(omp_get_max_threads()))
allocate(addr_j5(omp_get_max_threads()))
allocate(addr_k5(omp_get_max_threads()))
!$omp parallel
j1 = omp_get_thread_num()
write(1,*)1,loc(j1)
!$omp end parallel
!$omp parallel
if (any(j1 /= omp_get_thread_num())) print *,35
write(1,*)1,loc(j1)
!$omp end parallel
end
call s1
print *,'pass'
end
