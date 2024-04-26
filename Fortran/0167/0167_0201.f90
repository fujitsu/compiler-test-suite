module m1
  integer(4) :: a
  integer(4) :: b(100),c(100)
  integer d
  !$omp threadprivate(b)
  equivalence(a,d)
end

module m2
  use m1,only:x=>a,y=>b,w=>d
end

module m3
  use m1,only:xx=>a,yy=>b,zz=>c
end

use m2
use m3

integer(8),allocatable :: addr(:)
integer omp_get_max_threads, omp_get_thread_num
allocate(addr(omp_get_max_threads()))
!$omp parallel
addr(omp_get_thread_num()+1) = loc(yy)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do
!$omp parallel
addr(omp_get_thread_num()+1) = loc(y)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

call sub
if (xx /= 11) print *,4
if (x /= 11) print *,4
if (w /= 11) print *,4
if (any(yy /= 22)) print *,4
if (any(y /= 22)) print *,4
if (any(zz /= 33)) print *,4
if (size(yy) /= 100) print *,6
if (size(y) /= 100) print *,6
if (size(zz) /= 100) print *,6
print *,'pass'
end

subroutine sub
  use m1
  a=11
  b=22
  c=33
end
