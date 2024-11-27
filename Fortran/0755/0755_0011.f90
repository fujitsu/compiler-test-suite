module m
  integer i
end

use m
!$omp threadprivate(i)
end
