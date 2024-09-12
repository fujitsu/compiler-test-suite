module m
  !$omp threadprivate(/com/)
  common /com/ a
end module

use m
!$omp threadprivate(/com/)
common /com/ b
save /com/
print *,'pass'
end
