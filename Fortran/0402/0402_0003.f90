module m1
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
contains
subroutine s1
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
!$omp parallel
n1=1;n2=omp_get_thread_num()
call s2
!$omp end parallel
end subroutine
end
subroutine s2
use m1
integer omp_get_thread_num
if (n1/=1) print *,101
if (n2/=omp_get_thread_num()) print *,102
end subroutine
use m1
call s1
print *,'pass'
end
