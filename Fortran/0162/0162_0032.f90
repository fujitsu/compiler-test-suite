   !$omp parallel default(shared)
   do i=1,1
    do j=1,3
    end do
   end do
    do k=1,3
    end do
   !$omp end parallel
print *,'pass'
   end
