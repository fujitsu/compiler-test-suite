module m
  integer(4) :: a
  integer(4) :: b(100),c(100)
  !$omp threadprivate(b)
end

use m

integer(8),allocatable :: addr(:)
integer omp_get_max_threads, omp_get_thread_num
allocate(addr(omp_get_max_threads()))
!$omp parallel
addr(omp_get_thread_num()+1) = loc(b)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

call sub
if (a /= 11) print *,3
if (any(b /= 22)) print *,4
if (any(c /= 33)) print *,5
if (size(b) /= 100) print *,6
if (size(c) /= 100) print *,7
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
  c=33
end
