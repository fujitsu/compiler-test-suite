module m1
  !$omp threadprivate(a1,a3,a2)
end 
module m2
use m1,only:a1,b3=>a3
end 
module mm
use m1
use m2
contains
subroutine ss
!$omp parallel 
a1=11
b3=13
!$omp end parallel
if (a1/=11) print *,2111
if (b3/=13) print *,2131
if (a2/=12) print *,2132
end
end
use m1,only:a2
use m2,only:a1,b3
use mm,only:ss
a2=12
call ss
if (a1/=11) print *,2111
if (b3/=13) print *,2131
if (a2/=12) print *,2132
print *,'pass'
end


