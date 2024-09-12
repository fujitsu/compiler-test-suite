i1=100
!$omp parallel default(none) 
!$omp do 
         do i1=1,1
         end do
!$omp end do
!$omp critical (a1)
do iii=1,1
!$omp critical(a2)
         do i1=1,1
         end do
!$omp end critical(a2)
end do
!$omp endcritical(a1)
!$omp end parallel
if (i1.ne.100) print *,'err1',i1
print *,'pass'
end
