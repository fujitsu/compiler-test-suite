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
a1=omp_get_thread_num()+1
a2=omp_get_thread_num()+2
a3=omp_get_thread_num()+3
b1=omp_get_thread_num()+11
b3=omp_get_thread_num()+13
if (a1/=omp_get_thread_num()+11) print *,201
if (a2/=omp_get_thread_num()+2 ) print *,2011
if (a3/=omp_get_thread_num()+13) print *,203,a3
if (b1/=omp_get_thread_num()+11) print *,211,b1
if (b3/=omp_get_thread_num()+13) print *,213,b3
write(4, '("a1: ",z16.16)')loc(a1)
write(4, '("a2: ",z16.16)')loc(a2)
write(4, '("a3: ",z16.16)')loc(a3)
write(4, '("b1: ",z16.16)')loc(b1)
write(4, '("b3: ",z16.16)')loc(b3)
if (loc(a1)/=loc(b1)) print *,80001
if (loc(a3)/=loc(b3)) print *,80003
!$omp end parallel
end
call s1
print *,'pass'
end
