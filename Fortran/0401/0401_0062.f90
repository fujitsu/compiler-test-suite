module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp threadprivate(/com/)
common /com/ b
!$omp parallel copyin(/com/)
!$omp end parallel
print *,'pass'
end
