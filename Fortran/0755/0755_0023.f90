module m
  common /com/ a
end

use m
!$omp task private(/com/)
!$omp end task
print *,'pass'
end
