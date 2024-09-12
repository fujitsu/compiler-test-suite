common /foo/ i,j
!$omp threadprivate(/foo/)

integer :: omp_get_thread_num, omp_get_max_threads
integer(8), allocatable :: addr_i(:), addr_j(:)
allocate(addr_i(omp_get_max_threads()))
allocate(addr_j(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
addr_j(omp_get_thread_num()+1) = loc(j)
!$omp end parallel
if (any(addr_i(2:) == addr_i(1))) print *,1
if (any(addr_j(2:) == addr_j(1))) print *,2

print *,'pass'
end
