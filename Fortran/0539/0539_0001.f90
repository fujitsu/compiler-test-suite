i1=100
!$omp parallel default(none) 
!$omp do 
         do i1=1,1
         end do
!$omp end do
!$omp do
         do i1=1,1
         end do
!$omp end do
!$omp end parallel
if (i1.ne.100) print *,'err'
print *,'pass'
         end
