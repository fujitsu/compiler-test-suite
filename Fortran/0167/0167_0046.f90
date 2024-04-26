module m
  integer(4) :: a,b,c(:)
  allocatable b,c
  !$omp threadprivate(a,b,c)
end

use m

integer(8),allocatable :: addr(:)
integer omp_get_max_threads, omp_get_thread_num
allocate(addr(omp_get_max_threads()))

!$omp parallel
addr(omp_get_thread_num()+1) = loc(a)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

!$omp parallel
allocate(b)
b = omp_get_thread_num()
!$omp end parallel
!$omp parallel
if (b /= omp_get_thread_num()) print *,1,omp_get_thread_num()
deallocate(b)
!$omp end parallel

!$omp parallel
allocate(c(100))
c = omp_get_thread_num()
!$omp end parallel
!$omp parallel
if (any(c /= omp_get_thread_num())) print *,1,omp_get_thread_num()
deallocate(c)
!$omp end parallel

call sub
if (a /= 11) print *,3
if (b /= 22) print *,4
if (any(c /= 33)) print *,5
if (size(c) /= 10) print *,6
print *,'pass'
end

subroutine sub
  use m
  a=11
  allocate(b)
  b=22
  allocate(c(10))
  c=33
end
