module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp parallel private(/com/)
!$omp end parallel
end

