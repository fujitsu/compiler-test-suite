module m
  common /com/ a
end

use m
common /com/ b
b=1
!$omp task private(/com/)
b = 2
if (b/=2) print *,2
!$omp end task
if (b/=1) print *,3
print *,'pass'
end
