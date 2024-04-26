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
!$omp parallel 
a1=1
a3=3
b1=11
b3=13
if (a1/=11) print *,201
if (a3/=13) print *,203,a3
if (b1/=11) print *,211,b1
if (b3/=13) print *,213,b3
!$omp end parallel
end
call omp_set_num_threads(1)
call s1
print *,'pass'
end
