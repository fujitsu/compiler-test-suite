module m1
  integer::a1,x,y
  !$omp threadprivate(a1)
  !$omp threadprivate(y)
end 

module m2
use m1,only:b1=>a1
end 

use m1
integer :: omp_get_thread_num
x=3
!$omp parallel 
y=13+ omp_get_thread_num()
call s2
!$omp end parallel
print *,'pass'
end

subroutine s2
use m1
use m2
integer :: omp_get_thread_num
a1=x
b1=y
if (a1/=13+ omp_get_thread_num()) print *,1201,a1
if (b1/=13+ omp_get_thread_num()) print *,1301,b1
end
