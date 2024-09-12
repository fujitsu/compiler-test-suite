module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
common /com/ b
!$omp threadprivate(/com/)
!$omp parallel
  !$omp single
  !$omp end single copyprivate(/com/)
!$omp end parallel
print *,'pass'
end
