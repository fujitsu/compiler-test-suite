         !$omp parallel default(none) 
         !$omp simd collapse(2)
         do i=1,1
           do j=1,1
           do k=1,1
           do m=1,1
           end do
           end do
           end do
         end do
         !$omp end simd 
         !$omp endparallel
print *,'pass'
         end
