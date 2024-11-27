module m
  !$omp threadprivate(i)
end

use m
allocatable i
end
