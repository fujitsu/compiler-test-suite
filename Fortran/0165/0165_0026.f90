         !$omp parallel do default(none) collapse(3) shared(j1) private(j2)
         do i=1,1
           do j=1,1
           do j1=1,1
           do j2=1,1
           end do
           end do
           end do
         end do
print *,'pass'
         end
