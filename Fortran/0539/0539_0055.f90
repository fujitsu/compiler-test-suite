i1=100
!$omp parallel default(none)
!$omp do   collapse(3)
         do i3=1,1
         do i2=1,1
         do i1=1,1
         end do
         end do
         end do
!$omp enddo
!$omp sections
!$omp section
!$omp critical 
         do i1=1,1
write(100,*) (1,i3=1,1)
         end do
!$omp endcritical
!$omp section
!$omp critical (a2)
!$omp critical (a3)
!$omp critical (a4)
         do i1=1,1
write(100,*) (1,i2=1,1)
         end do
!$omp endcritical (a4)
!$omp endcritical (a3)
!$omp endcritical (a2)
!$omp end sections
!$omp endparallel
if (i1.ne.100) print *,'ng'
print *,'pass'
end