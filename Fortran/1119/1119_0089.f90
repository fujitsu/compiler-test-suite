!$omp barrier
  !$omp taskgroup
!$omp barrier
  !$omp end taskgroup
print *,'pass'
  end program
