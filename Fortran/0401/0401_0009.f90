common /com/ i1
common /com2/ i2
common /com3/ i3
!$omp threadprivate(/com/, /com2/, /com3/)
save /com/, /com2/, /com3/

common /com4/ i4
common /com5/ i5
common /com6/ i6
integer a, b, c
!$omp threadprivate(/com4/, a, /com5/, b, /com6/, c)
save /com4/, a, /com5/, b, /com6/, c

integer :: omp_get_thread_num, omp_get_max_threads
integer(8), allocatable :: addr_i1(:), addr_i2(:), addr_i3(:), addr_i4(:), addr_i5(:), addr_i6(:)
integer(8), allocatable :: addr_a(:), addr_b(:), addr_c(:)
allocate(addr_i1(omp_get_max_threads()))
allocate(addr_i2(omp_get_max_threads()))
allocate(addr_i3(omp_get_max_threads()))
allocate(addr_i4(omp_get_max_threads()))
allocate(addr_i5(omp_get_max_threads()))
allocate(addr_i6(omp_get_max_threads()))
allocate(addr_a(omp_get_max_threads()))
allocate(addr_b(omp_get_max_threads()))
allocate(addr_c(omp_get_max_threads()))
!$omp parallel
addr_i1(omp_get_thread_num()+1) = loc(i1)
addr_i2(omp_get_thread_num()+1) = loc(i2)
addr_i3(omp_get_thread_num()+1) = loc(i3)
addr_i4(omp_get_thread_num()+1) = loc(i4)
addr_i5(omp_get_thread_num()+1) = loc(i5)
addr_i6(omp_get_thread_num()+1) = loc(i6)
addr_a(omp_get_thread_num()+1) = loc(a)
addr_b(omp_get_thread_num()+1) = loc(b)
addr_c(omp_get_thread_num()+1) = loc(c)
!$omp end parallel
if (any(addr_i1(2:) == addr_i1(1))) print *,1
if (any(addr_i2(2:) == addr_i2(1))) print *,2
if (any(addr_i3(2:) == addr_i3(1))) print *,3
if (any(addr_i4(2:) == addr_i4(1))) print *,4
if (any(addr_i5(2:) == addr_i5(1))) print *,5
if (any(addr_i6(2:) == addr_i6(1))) print *,6
if (any(addr_a(2:) == addr_a(1))) print *,7
if (any(addr_b(2:) == addr_b(1))) print *,8
if (any(addr_c(2:) == addr_c(1))) print *,9

print *,'pass'
end
