module m1
bind(c) i
!$omp threadprivate( i )
contains
subroutine s1
integer omp_get_thread_num
i=  omp_get_thread_num()
end subroutine
end

subroutine s2
use m1
integer omp_get_thread_num
if (i/=  omp_get_thread_num()) print *,101,i
end

use m1
!$omp parallel
call s1
call s2
!$omp end parallel
print *,'pass'
end
