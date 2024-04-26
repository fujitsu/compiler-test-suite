module m1
!$omp threadprivate(n1)
bind(c)::n1
!$omp threadprivate(n2)
contains
subroutine ss1
integer omp_get_thread_num
if (n1/=omp_get_thread_num()+1) print *,101,n1
if (n2/=omp_get_thread_num()+10) print *,102,n2
end subroutine
end
subroutine s1
use m1
integer omp_get_thread_num
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+10
end
use m1
integer omp_get_thread_num
!$omp parallel
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
!$omp end parallel
print *,'pass'
end
