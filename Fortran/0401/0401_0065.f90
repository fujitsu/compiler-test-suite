subroutine s1
  common /foo/ i
  !$omp threadprivate(/foo/)
  integer :: k1(i), k2(i+1)
  if (size(k1) /= i) print *,5
  if (size(k2) /= i+1) print *,6
end

subroutine s2
  common /foo/ i
  !$omp threadprivate(/foo/)
  integer :: k1(i), k2(i+1)
  integer :: omp_get_max_threads, omp_get_thread_num
  integer, allocatable :: addr_i(:)

  allocate(addr_i(omp_get_max_threads()))
  !$omp parallel
  addr_i(omp_get_thread_num()+1) = loc(i)
  !$omp end parallel
  if (any(addr_i(2:) == addr_i(1))) print *,1
  if (omp_get_max_threads() == 1) print*,2
  if (size(k1) /= i) print *,3
  if (size(k2) /= i+1) print *,4
end

common /foo/ i
!$omp threadprivate(/foo/)
i = 3
call s1
call s2
print *,'pass'
end
