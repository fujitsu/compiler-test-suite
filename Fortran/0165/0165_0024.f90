         !$omp parallel do default(none) collapse(2)
         do i=1,1
           do j=1,1
           do while(1.eq.2) 
           end do
           end do
         end do
         !$omp parallel default(none) 
         !$omp do collapse(2)
         do i=1,1
           do j=1,1
           do while(1.eq.2)
           end do
           end do
         end do
         !$omp enddo 
         !$omp endparallel 
print *,'pass'
         end
