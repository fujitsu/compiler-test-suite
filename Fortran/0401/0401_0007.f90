common /com/ i1
!$omp threadprivate(/com/)
save /com/

common /com2/ i2
save /com2/
!$omp threadprivate(/com2/)

!$omp threadprivate(/com3/)
common /com3/ i3
save /com3/

!$omp threadprivate(/com4/)
save /com4/
common /com4/ i4

save /com5/
common /com5/ i5
!$omp threadprivate(/com5/)

save /com6/
!$omp threadprivate(/com6/)
common /com6/ i6

integer :: omp_get_thread_num, omp_get_max_threads
integer(8), allocatable :: addr_i1(:), addr_i2(:), addr_i3(:), addr_i4(:), addr_i5(:), addr_i6(:)
allocate(addr_i1(omp_get_max_threads()))
allocate(addr_i2(omp_get_max_threads()))
allocate(addr_i3(omp_get_max_threads()))
allocate(addr_i4(omp_get_max_threads()))
allocate(addr_i5(omp_get_max_threads()))
allocate(addr_i6(omp_get_max_threads()))
!$omp parallel
addr_i1(omp_get_thread_num()+1) = loc(i1)
addr_i2(omp_get_thread_num()+1) = loc(i2)
addr_i3(omp_get_thread_num()+1) = loc(i3)
addr_i4(omp_get_thread_num()+1) = loc(i4)
addr_i5(omp_get_thread_num()+1) = loc(i5)
addr_i6(omp_get_thread_num()+1) = loc(i6)
!$omp end parallel
if (any(addr_i1(2:) == addr_i1(1))) print *,1
if (any(addr_i2(2:) == addr_i2(1))) print *,2
if (any(addr_i3(2:) == addr_i3(1))) print *,3
if (any(addr_i4(2:) == addr_i4(1))) print *,4
if (any(addr_i5(2:) == addr_i5(1))) print *,5
if (any(addr_i6(2:) == addr_i6(1))) print *,6

print *,'pass'
end
