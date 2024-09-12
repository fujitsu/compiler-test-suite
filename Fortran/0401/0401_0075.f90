program main
integer :: i, omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_i(:)
integer(8),allocatable :: addr_a(:)
integer(8),allocatable :: addr_b(:)
common /foo/ a,b
!$omp threadprivate(/foo/)

allocate(addr_i(omp_get_max_threads()))
allocate(addr_a(omp_get_max_threads()))
allocate(addr_b(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
addr_a(omp_get_thread_num()+1) = loc(a)
addr_b(omp_get_thread_num()+1) = loc(b)
!$omp end parallel
if (any(addr_i(2:)/=addr_i(1))) print *,1
if (any(addr_a(2:)==addr_a(1))) print *,3
if (any(addr_b(2:)==addr_b(1))) print *,4
print *,'pass'

end
