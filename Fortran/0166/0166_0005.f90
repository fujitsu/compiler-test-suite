         !$omp parallel do simd default(none) collapse(2)
         do i=1,1
           do j=1,1
           end do
         end do
print *,'pass'
         end
