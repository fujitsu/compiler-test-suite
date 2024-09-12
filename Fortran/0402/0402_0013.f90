module m0
common /cmn/ n0
!$omp threadprivate(/cmn/)
end
subroutine s1
use m0
!$omp threadprivate(/cmn/)
common /cmn/ n1
integer omp_get_thread_num
n1=omp_get_thread_num()
end subroutine
subroutine s2
use m0
integer omp_get_thread_num
if (n0/=omp_get_thread_num()) print *,102
end subroutine
use m0
!$omp parallel
call s1
call s2
!$omp end parallel
print *,'pass'
end
