i1=100
!$omp parallel default(none) 
!$omp do 
         do i1=1,1
         end do
!$omp end do
do iii=1,1
!$omp simd
         do i1=1,1
         end do
!$omp end simd
end do
!$omp end parallel
if (i1.eq.100) print *,'err1',i1
print *,'pass'
end
