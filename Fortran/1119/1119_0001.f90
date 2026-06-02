  !$omp do
  do i=1,1
     !$omp cancel do
     !$omp cancel do
     !$omp cancel do
enddo
  !$omp end do
  print *,'pass'
  end
