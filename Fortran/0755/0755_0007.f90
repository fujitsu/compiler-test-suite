module m
  !$omp threadprivate(i)
  pointer i
  protected i
end module

use m
i=0
end
