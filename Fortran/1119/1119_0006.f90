  !$omp do
  do i=1,1
     !$omp cancellation point do
     !$omp cancellation point do
     !$omp cancellation point do
     !$omp cancel do
enddo
  !$omp end do
  print *,'pass'
  end
