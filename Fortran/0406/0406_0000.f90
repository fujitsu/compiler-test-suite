module m
  common /com/ a
  !$omp threadprivate(/com/)
end module

use m
save /com/
!$omp threadprivate(/com/)
common /com/ b
print *,'pass'
end
