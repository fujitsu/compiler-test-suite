module m
  common /com/ a
  !$omp threadprivate(/com/)
end module

use m
!$omp threadprivate(/com/)
common /com/ b
save /com/
print *,'pass'
end
