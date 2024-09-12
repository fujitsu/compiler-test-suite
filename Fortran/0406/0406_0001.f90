module m
  common /com/ a
  !$omp threadprivate(/com/)
end module

use m
!$omp threadprivate(/com/)
save /com/
common /com/ b
print *,'pass'
end
