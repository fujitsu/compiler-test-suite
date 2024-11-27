module m
  common /com/ a
end

use m
!$omp task firstprivate(/com/)
!$omp end task
print *,'pass'
end
