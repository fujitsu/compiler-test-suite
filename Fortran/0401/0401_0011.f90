integer i
common /a/ b
allocatable i(:)
integer,allocatable :: j(:)
!$omp threadprivate(i,j,/a/)

integer :: omp_get_thread_num, omp_get_max_threads
integer(8), allocatable :: addr_b(:)
allocate(addr_b(omp_get_max_threads()))
!$omp parallel
allocate(i(1))
allocate(j(1))
i(1) = omp_get_thread_num()
j(1) = omp_get_thread_num()
addr_b(omp_get_thread_num()+1) = loc(b)
!$omp end parallel
!$omp parallel
if (i(1) /= omp_get_thread_num()) print *,1
if (j(1) /= omp_get_thread_num()) print *,2
!$omp end parallel
if (any(addr_b(2:) == addr_b(1))) print *,3

print *,'pass'
end
