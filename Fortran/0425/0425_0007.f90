module m
  procedure(),pointer :: p
  !$omp threadprivate(p)
end

use m
intrinsic sin
p=>sin
print *,'PASS'
end
