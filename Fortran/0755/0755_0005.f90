module m
  pointer i
  protected i
  !$omp threadprivate(i)
end module

use m
i=0
end
