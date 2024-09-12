j1=100
         !$omp parallel default(none) private(j1,i)
         !$omp do collapse(3)
         do i=1,1
           do j=1,1
           do k=1,1
           end do
           end do
         end do
!$omp end do
         !$omp do
         do i1=1,1
           do j1=1,1
           end do
         end do
!$omp end do
         !$omp do collapse(1)
         do i1a=1,1
!$omp simd
         do i1=1,1
         end do
!$omp endsimd
         end do
!$omp end do
j1=200
!$omp end parallel
if (j1.ne.100) print *,'err'
print *,'pass'
         end
