module m1
integer:: k
!$omp threadprivate (k)
end
subroutine s1
use m1
integer omp_get_thread_num
integer a(k)
if (size(a)/=omp_get_thread_num()) print *,101,size(a),omp_get_thread_num()
a=1
if (any(a/=1)) print *,102,a
end
use m1
integer omp_get_thread_num
!$omp parallel
k=omp_get_thread_num()
call s1
!$omp end parallel
print *,'pass'
end
