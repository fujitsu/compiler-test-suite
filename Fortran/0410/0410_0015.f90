module m
  integer x1,x2
  !$omp threadprivate(x1,x2)
  bind(c)  x1
  bind(c)  x2
  dimension x1(10000),x2(10000)
end module

use m
integer omp_get_thread_num
!$omp parallel
x1 = omp_get_thread_num()
x2 = omp_get_thread_num()
!$omp end parallel
!$omp parallel
if (any(x1 /= omp_get_thread_num())) print *,1
if (any(x2 /= omp_get_thread_num())) print *,1
!$omp end parallel
print *,'pass'
end
