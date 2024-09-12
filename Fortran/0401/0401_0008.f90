volatile k
integer, volatile :: l
!$omp threadprivate(i, j, k, l)
volatile i
integer, volatile :: j

integer :: omp_get_thread_num, omp_get_max_threads
integer(8), allocatable :: addr_i(:), addr_j(:), addr_k(:), addr_l(:)

allocate(addr_i(omp_get_max_threads()))
allocate(addr_j(omp_get_max_threads()))
allocate(addr_k(omp_get_max_threads()))
allocate(addr_l(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
addr_j(omp_get_thread_num()+1) = loc(j)
addr_k(omp_get_thread_num()+1) = loc(k)
addr_l(omp_get_thread_num()+1) = loc(l)
!$omp end parallel
if (omp_get_max_threads() == 1) print*,1
if (any(addr_i(2:) == addr_i(1))) print *,2
if (any(addr_j(2:) == addr_j(1))) print *,3
if (any(addr_k(2:) == addr_k(1))) print *,4
if (any(addr_l(2:) == addr_l(1))) print *,5

print *,'pass'
end
