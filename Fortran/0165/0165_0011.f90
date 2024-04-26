common /com/ j1,i,j,i1
j1=100
         !$omp parallel default(none) shared(/com/)
         !$omp do collapse(2)
         do i=1,1
           do j=1,1
           do k=1,1
           end do
           do k=1,1
           end do
           end do
         end do
!$omp end do
         !$omp do collapse(2)
         do i1=1,1
           do j1=1,1
           do k1=1,1
           end do
           end do
         end do
!$omp end do
         !$omp do collapse(1)
         do i1=1,1
           do j1=1,1
           do k1=1,1
           end do
           end do
         end do
!$omp end do
         !$omp do collapse(3)
         do i1=1,1
           do j1=1,1
           do k1=1,1
           end do
           end do
         end do
!$omp end do
         !$omp do collapse(1)
         do i1=1,1
           do j1=1,1
           end do
         end do
!$omp end do
         !$omp do collapse(1)
         do i1=1,1
         end do
!$omp end do
j1=200
!$omp end parallel
if (j1.ne.200) print *,'err'
print *,'pass'
         end
