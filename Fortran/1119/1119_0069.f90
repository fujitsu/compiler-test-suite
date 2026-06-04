  !$omp sections
  !$omp parallel
  !$omp cancel parallel
  !$omp end parallel
  !$omp cancel sections
  !$omp end sections
  print *,'pass'
  end program
  
