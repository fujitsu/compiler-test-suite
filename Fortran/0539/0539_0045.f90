!$omp parallel default(none)
!$omp do collapse(3)
         do i1=1,1
         do i2=1,1
         do i3=1,1
         end do
         end do
         end do
!$omp end do
!$omp critical
!$omp simd collapse(2)
         do i3=1,1
         do i1=1,1
         end do
         end do
!$omp endsimd
!$omp endcritical
!$omp endparallel
print *,'pass'
end
