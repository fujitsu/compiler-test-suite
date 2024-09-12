asynchronous a
!$omp threadprivate(a,b)
asynchronous b

integer omp_get_max_threads, omp_get_thread_num
integer(8),allocatable :: addr_a(:), addr_b(:)

allocate(addr_a(omp_get_max_threads()))
allocate(addr_b(omp_get_max_threads()))
!$omp parallel
addr_a(omp_get_thread_num()+1) = loc(a)
addr_b(omp_get_thread_num()+1) = loc(b)
!$omp end parallel
if (any(addr_a(2:)==addr_a(1))) print *,3
if (any(addr_b(2:)==addr_b(1))) print *,4

print *,'pass'
end
