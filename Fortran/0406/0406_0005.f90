module m
  !$omp threadprivate(/com/)
  common /com/ a
end module

use m
save /com/
!$omp threadprivate(/com/)
common /com/ b
print *,'pass'
end
