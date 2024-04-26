module m1
!$omp threadprivate(/cmn/)
common /cmn/ k1
end
use m1
integer ::omp_get_thread_num
k1=omp_get_thread_num()
call x1
print *,'pass'
contains
subroutine x1
integer ::omp_get_thread_num
if (k1/=omp_get_thread_num()) print *,101
end subroutine
end
