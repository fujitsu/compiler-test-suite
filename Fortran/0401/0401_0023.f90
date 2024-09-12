subroutine s1
integer :: omp_get_thread_num, omp_get_max_threads
integer(8), allocatable :: addr_i(:)
!$omp threadprivate(/foo/)
save /foo/
common /foo/ i, j
allocate(addr_i(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
!$omp end parallel
if (any(addr_i(2:) == addr_i(1))) print *,11
if (omp_get_max_threads() == 1) print*,12
end subroutine s1

subroutine s2
integer :: omp_get_thread_num, omp_get_max_threads
integer(8), allocatable :: addr_i(:)
!$omp threadprivate(/foo/)
save
common /foo/ i, j
allocate(addr_i(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
!$omp end parallel
if (any(addr_i(2:) == addr_i(1))) print *,21
end subroutine s2

call s1
call s2
print *,'pass'
end
