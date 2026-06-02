  !$omp taskgroup
!$omp taskwait
  !$omp end taskgroup
print *,'pass'
  end program
