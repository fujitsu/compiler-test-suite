module m1
integer,save:: n1,n2
!$omp threadprivate(n1,n2)
end
subroutine s1
use m1
integer omp_get_thread_num
!$omp task
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
!$omp end task
end
subroutine s2
use m1
integer omp_get_thread_num
!$omp task
if (n1/=omp_get_thread_num()+1) print *,101
if (n2/=omp_get_thread_num()+2) print *,102
!$omp end task
end
call s1
call s2
print *,'pass'
end
