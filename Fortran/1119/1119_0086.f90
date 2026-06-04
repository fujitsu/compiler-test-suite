i=1
  !$omp parallel
!$omp task
!$omp taskgroup
!$omp task
!$omp taskgroup
if(i/=1) print *,'err'
!$omp end taskgroup
!$omp end task
!$omp end taskgroup
!$omp end task
!$omp end parallel
print *,'pass'
  end program
