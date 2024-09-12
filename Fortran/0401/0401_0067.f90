module m
  integer :: i, j
  common /foo/ k
  common /fuga/ l
  !$omp threadprivate(j, /fuga/)
end module m

module mm
  use m
  private j
contains
  subroutine ms
    integer :: omp_get_max_threads, omp_get_thread_num
    integer(8), allocatable :: addr(:)
    allocate(addr(omp_get_max_threads()))
    !$omp parallel
    addr(omp_get_thread_num()+1) = loc(j)
    !$omp end parallel
    if (any(addr(2:) == addr(1))) print *,"mm"
  end subroutine ms
end module mm

subroutine s
  use m
  integer :: a1(i), a2(j), a3(k), a4(l)
  integer :: b1(i+1), b2(j+1), b3(k+1), b4(l+1)
  integer(8), allocatable :: addr_j(:), addr_l(:)
  integer :: omp_get_max_threads, omp_get_thread_num

  allocate(addr_j(omp_get_max_threads()))
  allocate(addr_l(omp_get_max_threads()))
  !$omp parallel
  addr_j(omp_get_thread_num()+1) = loc(j)
  addr_l(omp_get_thread_num()+1) = loc(l)
  !$omp end parallel
  if (any(addr_j(2:) == addr_j(1))) print *,1
  if (any(addr_l(2:) == addr_l(1))) print *,2
  if (omp_get_max_threads() == 1) print *,3

  if (size(a1) /= i) print *,4
  if (size(a2) /= j) print *,5
  if (size(a3) /= k) print *,6
  if (size(a4) /= l) print *,7
  if (size(b1) /= i+1) print *,8
  if (size(b2) /= j+1) print *,9
  if (size(b3) /= k+1) print *,10
  if (size(b4) /= l+1) print *,11
end subroutine s

subroutine s2
  use mm
  call ms
end subroutine 

program main
use m
i=3
j=4
k=5
l=6
call s
call s2
print *,'pass'
end
