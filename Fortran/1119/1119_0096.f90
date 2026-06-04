!$omp do
do i=1,10
  !$omp critical
  !$omp taskgroup
  !$omp end taskgroup
  !$omp end critical
    !$omp parallel
    !$omp parallel
   !$omp taskgroup
  !$omp end taskgroup
  !$omp end parallel
  !$omp end parallel
enddo
   !$omp enddo
print *,'pass'
  end program
