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
b1=11
b3=13
!$omp end parallel
end
call omp_set_num_threads(1)
call s1
print *,'pass'
end
