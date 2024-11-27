module m
  common /com/ a
  !$omp threadprivate(/com/)
end

use m
!$omp parallel do lastprivate(/com/)
  do i=1,1
  end do
!$omp end parallel do
end

