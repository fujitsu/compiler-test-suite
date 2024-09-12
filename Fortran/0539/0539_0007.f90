i1=100
!$omp parallel default(none) 
!$omp do 
         do i1=1,1
         end do
!$omp end do
!$omp critical
do iii=1,1
!$omp simd
         do i1=1,1
         end do
!$omp end simd
end do
!$omp endcritical
!$omp end parallel
print *,'pass'
end
