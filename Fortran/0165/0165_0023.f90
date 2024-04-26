         !$omp parallel default(none) private(kk,i,j)
         !$omp parallel default(none) private(kk)
         !$omp do
         do i=1,1
           do j=1,1
kk=1
           end do
         end do
         !$omp enddo
         !$omp endparallel
         !$omp endparallel
print *,'pass'
         end
