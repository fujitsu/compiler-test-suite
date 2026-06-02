module m1
  integer::a1,a2,a3
  !$omp threadprivate(a1,a3)
end 
module m2
use m1,only:b1=>a1,b333=>a3
end 
subroutine s1
use m1
use m2
integer ::omp_get_thread_num
!$omp parallel 
b333=omp_get_thread_num()+13
b1=omp_get_thread_num()+13
if (b333/=omp_get_thread_num()+13) print *,213,b333
if (b1/=omp_get_thread_num()+13) print *,213,b333
if (loc(a3)/=loc(b333)) print *,80003
if (loc(a1)/=loc(b1)) print *,80001
!$omp end parallel
end
call s1
print *,'pass'
end
