   !$omp parallel do default(shared)
   do i=1,1
    do j=1,3
    end do
    do k=1,3
    end do
   end do
   !$omp end parallel do
print *,'pass'
   end
