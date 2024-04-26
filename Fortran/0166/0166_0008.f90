         !$omp parallel default(none) shared(i,k)
         !$omp simd collapse(1) private(j)
         do i=1,1
           do j=1,1
           do k=1,1
           do m=1,1
           end do
           end do
           end do
         end do
         !$omp end simd 
         !$omp dosimd collapse(2) private(m)
         do i=1,1
           do j=1,1
           do k=1,1
           do m=1,1
           end do
           end do
           end do
         end do
         !$omp end dosimd
         !$omp do   collapse(2) private(j)
         do i=1,1
           do j=1,1
           do k=1,1
           do m=1,1
           end do
           end do
           end do
         end do
         !$omp end do   
         !$omp endparallel
print *,'pass'
         end
