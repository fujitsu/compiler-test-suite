module m1
 integer:: k
 common /cmn/ k
!$omp threadprivate( /cmn/  )
end
 subroutine s1
use m1
integer ::omp_get_thread_num
!$omp parallel
print *,k,omp_get_thread_num()
if (k/=0) print *,102,k
if (k/=0) print '(z8.8)',k
!$omp end parallel
end subroutine

call s1
print *,'pass'
end
