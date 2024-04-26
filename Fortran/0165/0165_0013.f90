         !$omp task default(none)
         !$omp parallel
         !$omp do collapse(2)
         do i=1,1
           do j=1,1
           end do
         end do
         !$omp enddo
         !$omp endparallel
         !$omp end task
print *,'pass'
         end
