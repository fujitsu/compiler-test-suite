i=10
j=20
k=30
         !$omp parallel do default(none) collapse(3) private(i) shared(j,i1,j1,k1)
         do i=1,1
           do j=1,1
           do k=1,1
         !$omp parallel do default(none) collapse(3) private(i1) shared(j1)
         do i1=1,1
           do j1=1,1
           do k1=1,1
           end do
           end do
         end do
         !$omp endparallel do
           end do
           end do
         end do
         !$omp endparallel do
print *,'pass'
if (i.ne.10) print *,'err',i
if (j.ne.20) print *,'err',j
if (k.ne.30) print *,'err',k

i=10
j=20
k=30
         !$omp parallel do default(none) collapse(3) private(i) shared(j,k,i1,j1,k1)
         do i=1,1
           do j=1,1
           do k=1,1
         !$omp parallel default(none) private(i1) shared(j1)
         !$omp do collapse(3)
         do i1=1,1
           do j1=1,1
           do k1=1,1
           end do
           end do
         end do
         !$omp enddo
         !$omp endparallel
           end do
           end do
         end do
         !$omp endparallel do
if (i.ne.10) print *,'err',i
if (j.ne.20) print *,'err',j
if (k.ne.30) print *,'err',k
         end
