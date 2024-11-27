module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp threadprivate(/com/)
!$omp task firstprivate(/com/)
!$omp end task
print *,'pass'
end
