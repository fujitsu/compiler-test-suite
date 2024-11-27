i=10
j=20
k=30
         !$omp parallel do default(none) collapse(3) private(i) shared(j)
         do i=1,1
           do j=1,1
           do k=1,1
           end do
           end do
         end do
print *,'pass'
print *,i
print *,j
print *,k

         !$omp parallel default(none) private(i) shared(j)
         !$omp do collapse(3)
         do i=1,1
           do j=1,1
           do k=1,1
           end do
           end do
         end do
         !$omp enddo
         !$omp endparallel
print *,'pass'
print *,i
print *,j
print *,k
         end
