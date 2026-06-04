!integer :: x
!x=1
 !$omp parallel default(none)
 !$omp do private(x)
 do jj=1,1
 x=1
 end do
 !$omp end do
 !$omp end parallel
print *,'pass'
 end
