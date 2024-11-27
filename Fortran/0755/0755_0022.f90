module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp parallel shared(/com/)
!$omp end parallel
end

