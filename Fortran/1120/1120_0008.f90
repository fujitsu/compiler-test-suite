!$omp parallel
!$omp parallel do
  do i=1,10
  enddo
!$omp parallel do
  do i=1,10
  enddo
!$omp end parallel do
!$omp endparallel
  print *,'pass'
      end
