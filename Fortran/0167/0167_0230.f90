module m1
  integer(4) :: a,b,c
  !$omp threadprivate(a,b,c)
end

module m2
  use m1,i=>a,j=>b,k=>c
end

use m1,x=>a,y=>b,z=>c
use m2
integer(8),allocatable :: addr(:)
integer omp_get_max_threads, omp_get_thread_num
allocate(addr(omp_get_max_threads()))

!$omp parallel
addr(omp_get_thread_num()+1) = loc(i)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

!$omp parallel
addr(omp_get_thread_num()+1) = loc(j)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

!$omp parallel
addr(omp_get_thread_num()+1) = loc(k)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

!$omp parallel
addr(omp_get_thread_num()+1) = loc(x)
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

!$omp parallel
addr(omp_get_thread_num()+1) = loc(z)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do
call sub
if (i /= 11) print *,3
if (x /= 11) print *,3
if (j /= 22) print *,4
if (y /= 22) print *,4
if (k /= 33) print *,5
if (z /= 33) print *,5
print *,'pass'
end

subroutine sub
  use m1
  a=11
  b=22
  c=33
end
