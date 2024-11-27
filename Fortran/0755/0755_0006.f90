module m
  integer, pointer, protected :: i
  !$omp threadprivate(i)
end module

use m
i=0
end
