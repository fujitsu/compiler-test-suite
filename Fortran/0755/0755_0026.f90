module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp task shared(/com/)
!$omp end task
print *,'pass'
end
