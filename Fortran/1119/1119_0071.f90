  !$omp taskgroup
  !$omp task
  !$omp parallel
  !$omp sections
  !$omp cancel sections
  !$omp end sections
  !$omp do
  do i=1,1
     !$omp cancel do
  enddo
  !$omp end do
  !$omp cancel parallel
  !$omp end parallel
  !$omp cancel taskgroup
  !$omp end task
  !$omp end taskgroup
  print *,'pass'
  end program
  
