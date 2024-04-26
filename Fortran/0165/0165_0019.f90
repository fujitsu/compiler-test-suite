         !$omp task     default(none)
         !$omp parallel default(none)
         !$omp do collapse(2)
         do i=1,1
           do j=1,1
           end do
         end do
         !$omp enddo
         !$omp endparallel
         !$omp endtask     
print *,'pass'
         end
