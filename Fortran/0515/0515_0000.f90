integer :: i=0 
  !$omp task default(none) 
   !$omp critical
   !$omp task  private(i)
   do i=1,1
   end do
   !$omp end task
   !$omp endcritical
   !$omp end task
   print *,"pass"
   end
