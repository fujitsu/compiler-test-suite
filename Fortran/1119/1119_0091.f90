  !$omp taskgroup
!$omp flush
  !$omp end taskgroup
print *,'pass'
  end program
