module m
  !$omp threadprivate(i)
  integer,save,bind(c) :: i
end 

use m
end
