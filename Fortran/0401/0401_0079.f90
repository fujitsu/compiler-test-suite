program main
integer :: i, j, omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_i(:)
integer(8),allocatable :: addr_j(:)
integer(8),allocatable :: addr_a(:)
integer(8),allocatable :: addr_b(:)
integer(8),allocatable :: addr_c(:)
integer(8),allocatable :: addr_d(:)
common /foo/ a,b
common /fuga/ c,d
!$omp threadprivate(/foo/,i,/fuga/)

allocate(addr_i(omp_get_max_threads()))
allocate(addr_j(omp_get_max_threads()))
allocate(addr_a(omp_get_max_threads()))
allocate(addr_b(omp_get_max_threads()))
allocate(addr_c(omp_get_max_threads()))
allocate(addr_d(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
addr_j(omp_get_thread_num()+1) = loc(j)
addr_a(omp_get_thread_num()+1) = loc(a)
addr_b(omp_get_thread_num()+1) = loc(b)
addr_c(omp_get_thread_num()+1) = loc(c)
addr_d(omp_get_thread_num()+1) = loc(d)
!$omp end parallel
if (any(addr_i(2:)==addr_i(1))) print *,1
if (any(addr_j(2:)/=addr_j(1))) print *,2
if (any(addr_a(2:)==addr_a(1))) print *,3
if (any(addr_b(2:)==addr_b(1))) print *,4
if (any(addr_c(2:)==addr_c(1))) print *,5
if (any(addr_d(2:)==addr_d(1))) print *,6
print *,'pass'

end
