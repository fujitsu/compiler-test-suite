module m1
  integer::a1,a2,a3
  !$omp threadprivate(a1,a2,a3)
end 
module m2
use m1,only:b1=>a1,b2=>a2,b3=>a3
end 
subroutine s1
use m1
use m2
!$omp parallel 
do k=1,3
a1=1
a2=2
a3=3
b1=11
b2=12
b3=13
if (loc(a3)/=loc(b3)) print '(1h ,z16.16,x,z16.16)',loc(a3),loc(b3)
if (a1/=11) print *,201
if (a2/=12) print *,202
if (a3/=13) print *,203,a3
if (b1/=11) print *,211,b1
if (b2/=12) print *,212,b2
if (b3/=13) print *,213,b3
end do
!$omp end parallel
end
call omp_set_num_threads(1)
call s1
print *,'pass'
end
