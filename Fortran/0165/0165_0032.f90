i=10
j=20
k=30
         !$omp parallel default(shared)
         !$omp parallel do default(none) collapse(3) private(i) shared(j)
         do i=1,1
           do j=1,1
           do k=1,1
           end do
           end do
         end do
         !$omp endparallel
print *,'pass'
if (i.ne.10) print *,'err',i
if (j.ne.20) print *,'err',j
if (k.ne.30) print *,'err',k

i=10
j=20
k=30
         !$omp parallel default(private)
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
         !$omp endparallel
if (i.ne.10) print *,'err',i
if (j.ne.20) print *,'err',j
if (k.ne.30) print *,'err',k
         end
