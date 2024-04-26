         !$omp parallel default(none)
         !$omp do collapse(2)
         do i=1,1
           do j=1,1
           end do
         end do
!$omp end do
!$omp end parallel
print *,'pass'
         end
