module m
  integer i
  !$omp threadprivate(i)
end module

use m
integer j
!$omp threadprivate(j)
print *,'pass'
end
