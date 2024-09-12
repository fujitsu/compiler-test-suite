i1=100
!$omp task     default(none) private(i1,i2,i3)
!$omp simd
         do i1=1,1
write(100,*) (1,i3=1,1)
         end do
!$omp end simd
!$omp critical
!$omp simd collapse(2)
         do i3=1,1
         do i1=1,1
         end do
         end do
!$omp endsimd
i1=200
!$omp endcritical
!$omp endtask
i1=100
!$omp task     default(none) private(i1,i2,i3)
         do i1=1,1
write(100,*) (1,i3=1,1)
         end do
!$omp critical
!$omp simd collapse(2)
         do i3=1,1
         do i1=1,1
         end do
         end do
!$omp endsimd
i1=200
!$omp endcritical
!$omp endtask
if (i1.ne.100) print *,'ng2'
print *,'pass'
end
