!$omp threadprivate(i,j,k,l)
allocatable i(:)
integer, allocatable :: j(:)
integer k,l
allocatable l(:)

integer :: omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_k(:)
allocate(addr_k(omp_get_max_threads()))
!$omp parallel
allocate(i(1))
allocate(j(1))
allocate(l(1))
i(1) = omp_get_thread_num()
j(1) = omp_get_thread_num()
l(1) = omp_get_thread_num()
addr_k(omp_get_thread_num()+1) = loc(k)
!$omp end parallel
!$omp parallel
if (i(1) /= omp_get_thread_num()) print *,1
if (j(1) /= omp_get_thread_num()) print *,2
if (l(1) /= omp_get_thread_num()) print *,3
!$omp end parallel
if (any(addr_k(2:)==addr_k(1))) print *,4

print *,'pass'
end
