!$omp critical
  !$omp taskgroup
!$omp end taskgroup
!$omp end critical
print *,'pass'
  end program
