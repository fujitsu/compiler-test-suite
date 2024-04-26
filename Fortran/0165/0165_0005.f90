j1=100
k=100
         !$omp parallel default(none) private(j1,i) shared(k)
         !$omp do collapse(2)
         do i=1,1
           do j=1,1
             do k=1,1
             end do
           end do
         end do
!$omp end do
         !$omp do collapse(2)
         do i1=1,1
           do j1=1,1
           end do
         end do
!$omp end do
j1=200
k=200
!$omp end parallel
if (j1.ne.100) print *,'err'
if (k.ne.200) print *,'err'
print *,'pass'
         end
