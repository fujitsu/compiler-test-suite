module m
  common /com/ a
end

use m
!$omp task shared(/com/)
!$omp end task
print *,'pass'
end
