  !$omp taskgroup
  !$omp task
  !$omp taskgroup
  !$omp task
  !$omp cancel taskgroup if(1.eq.1)
  !$omp end task
  !$omp end taskgroup
  !$omp end task
  !$omp end taskgroup
  print *,'pass'
end
