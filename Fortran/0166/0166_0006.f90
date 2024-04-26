         !$omp parallel default(none) 
         !$omp do simd collapse(2)
         do i=1,1
           do j=1,1
           end do
         end do
         !$omp enddo simd 
         !$omp endparallel
print *,'pass'
         end
