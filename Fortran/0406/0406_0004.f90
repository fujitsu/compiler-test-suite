module m
  !$omp threadprivate(/com/)
  common /com/ a
end module

use m
!$omp threadprivate(/com/)
save /com/
common /com/ b
print *,'pass'
end
