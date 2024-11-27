module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp parallel
  !$omp single
  !$omp end single copyprivate(/com/)
!$omp end parallel
end
