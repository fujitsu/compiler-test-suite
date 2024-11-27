module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp parallel copyin(/com/)
!$omp end parallel
end

