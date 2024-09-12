module m1
bind(c) :: i1,jj1,k1
!$omp threadprivate(i1)
end

module m2
bind(c) :: i2,j2,k2
!$omp threadprivate(i2,j2)
end

module m3
bind(c) :: i3,j3,k3
!$omp threadprivate(i3,k3)
end

module m4
bind(c) :: i4,j4,k4
!$omp threadprivate(i4,j4,k4)
end

module m5
bind(c) :: i5,j5,k5
!$omp threadprivate(i5,k5,j5)
end

use m1
use m2
use m3
use m4
use m5
integer :: omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_i1(:)
integer(8),allocatable :: addr_jj1(:)
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
allocate(addr_jj1(omp_get_max_threads()))
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
addr_i1(omp_get_thread_num()+1) = loc(i1)
addr_jj1(omp_get_thread_num()+1) = loc(jj1)
addr_k1(omp_get_thread_num()+1) = loc(k1)
addr_i2(omp_get_thread_num()+1) = loc(i2)
addr_j2(omp_get_thread_num()+1) = loc(j2)
addr_k2(omp_get_thread_num()+1) = loc(k2)
addr_i3(omp_get_thread_num()+1) = loc(i3)
addr_j3(omp_get_thread_num()+1) = loc(j3)
addr_k3(omp_get_thread_num()+1) = loc(k3)
addr_i4(omp_get_thread_num()+1) = loc(i4)
addr_j4(omp_get_thread_num()+1) = loc(j4)
addr_k4(omp_get_thread_num()+1) = loc(k4)
addr_i5(omp_get_thread_num()+1) = loc(i5)
addr_j5(omp_get_thread_num()+1) = loc(j5)
addr_k5(omp_get_thread_num()+1) = loc(k5)
!$omp end parallel
if (any(addr_i1(2:)==addr_i1(1))) print *,11
if (any(addr_jj1(2:)/=addr_jj1(1))) print *,21
if (any(addr_k1(2:)/=addr_k1(1))) print *,31
if (any(addr_i2(2:)==addr_i2(1))) print *,12
if (any(addr_j2(2:)==addr_j2(1))) print *,22
if (any(addr_k2(2:)/=addr_k2(1))) print *,32
if (any(addr_i3(2:)==addr_i3(1))) print *,13
if (any(addr_j3(2:)/=addr_j3(1))) print *,23
if (any(addr_k3(2:)==addr_k3(1))) print *,33
if (any(addr_i4(2:)==addr_i4(1))) print *,14
if (any(addr_j4(2:)==addr_j4(1))) print *,24
if (any(addr_k4(2:)==addr_k4(1))) print *,34
if (any(addr_i5(2:)==addr_i5(1))) print *,15
if (any(addr_j5(2:)==addr_j5(1))) print *,25
if (any(addr_k5(2:)==addr_k5(1))) print *,35
print *,'pass'
end
