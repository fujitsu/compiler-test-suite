i=100
         !$omp parallel default(none) reduction(+:i)
         !$omp do collapse(2)
         do i1=1,1
           do j=1,1
           do i=1,1
           end do
           end do
         end do
i=i+200
         !$omp endparallel
if (i.eq.100) print *,'err'
print *,'pass'
         end
