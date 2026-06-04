  !$omp parallel
  !$omp cancel parallel
  !$omp parallel
  !$omp sections
  !$omp cancel sections
  !$omp end sections
  !$omp cancel parallel
  !$omp end parallel
  !$omp end parallel
  print *,'pass'
  end program
  
