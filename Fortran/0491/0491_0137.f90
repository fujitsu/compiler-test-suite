module m1
  integer::a1,a2,a3
  !$omp threadprivate(a1,a2,a3)
end 
module m2
use m1,only:b1=>a1,a2,b3=>a3
end 
subroutine s1
use m1
use m2
integer ::omp_get_thread_num
!$omp parallel 
b3=omp_get_thread_num()+13
if (b3/=omp_get_thread_num()+13) print *,213,b3
if (loc(a3)/=loc(b3)) print *,80003
!$omp end parallel
end
call s1
print *,'pass'
end
