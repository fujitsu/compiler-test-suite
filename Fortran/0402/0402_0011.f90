module m1
!$omp threadprivate(/cmn/)
save /cmn/
common /cmn/ n1
end
subroutine s1
use m1
integer omp_get_thread_num
n1=omp_get_thread_num()
end subroutine
subroutine s2
use m1
common /cmn/ n2
integer omp_get_thread_num
!$omp threadprivate(/cmn/)
if (n2/=omp_get_thread_num()) print *,102
end subroutine
use m1
!$omp parallel
call s1
call s2
!$omp end parallel
print *,'pass'
end
