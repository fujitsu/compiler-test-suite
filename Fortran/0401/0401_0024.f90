module m
  !$omp threadprivate(j, /fuga/)
  integer :: i, j
  common /fuga/ l
end module m

subroutine s
  use m
  !$omp threadprivate(/foo/)
  common /foo/ k
  integer :: a1(i), a2(j), a3(k), a4(l)

  integer :: omp_get_thread_num, omp_get_max_threads
  integer(8), allocatable :: addr_k(:), addr_l(:)
  allocate(addr_k(omp_get_max_threads()))
  allocate(addr_l(omp_get_max_threads()))
  !$omp parallel
  addr_k(omp_get_thread_num()+1) = loc(k)
  addr_l(omp_get_thread_num()+1) = loc(l)
  !$omp end parallel
  if (any(addr_k(2:) == addr_k(1))) print *,1
  if (any(addr_l(2:) == addr_l(1))) print *,2
end subroutine s

call s
print *,'pass'
end
