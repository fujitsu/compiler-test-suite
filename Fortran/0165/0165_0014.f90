i=100
         !$omp parallel default(none) private(i)
         !$omp do collapse(1)
         do i=1,1
           do j=1,1
           end do
         end do
i=200
         !$omp endparallel
if (i.ne.100) print *,'err'
print *,'pass'
         end
