module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp threadprivate(/com/)
!$omp task private(/com/)
!$omp end task
print *,'pass'
end
