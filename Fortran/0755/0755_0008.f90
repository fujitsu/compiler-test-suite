module m
  !$omp threadprivate(i)
  integer, pointer, protected :: i
end module

use m
i=0
end
