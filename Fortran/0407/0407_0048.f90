module m1
  !$omp threadprivate(a1,a3,a2)
end 
module m2
use m1,only:a1,b3=>a3
end 
use m1
use m2
!$omp parallel 
b3=13
!$omp end parallel
print *,'pass'
end
