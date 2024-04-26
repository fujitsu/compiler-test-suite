   !$omp parallel default(shared)
   !$omp do
   do i=1,1
    do j=1,3
    end do
   end do
   !$omp end do
   !$omp do
    do k=1,3
    end do
   !$omp end do
   !$omp end parallel
print *,'pass'
   end
