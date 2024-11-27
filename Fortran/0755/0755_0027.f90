module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp threadprivate(/com/)
!$omp task shared(/com/)
!$omp end task
print *,'pass'
end
