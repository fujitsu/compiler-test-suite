  !$omp parallel
  
  !$omp taskgroup
!$omp taskyield
  !$omp end taskgroup

    !$omp taskgroup
!$omp taskwait
  !$omp end taskgroup

  !$omp end parallel
print *,'pass'
  end program
