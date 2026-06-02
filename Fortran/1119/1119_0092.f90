!$omp task
  !$omp taskgroup
!$omp taskyield
  !$omp end taskgroup
    !$omp taskgroup
!$omp taskwait
  !$omp end taskgroup
  !$omp end task
print *,'pass'
  end program
