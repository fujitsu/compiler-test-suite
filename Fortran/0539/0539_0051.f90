i1=100
!$omp parallel default(none)
!$omp do 
         do i1=1,1
write(101,*) (1,i3=1,1)
         end do
!$omp end do
!$omp critical
!$omp simd collapse(2)
         do i3=1,1
         do i1=1,1
         end do
         end do
!$omp endsimd
i1=200
!$omp endcritical
!$omp endparallel
if (i1.ne.200) print *,'ng'
print *,'pass'
end
