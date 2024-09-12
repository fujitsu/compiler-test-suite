  !$omp parallel
  !$omp sections
  !$omp critical
  !$omp simd
  do i=1,1
  enddo
  !$omp end simd
  !$omp end critical
  !$omp section
  !$omp simd
  do i=1,1
  enddo
  !$omp end simd
  !$omp section
  !$omp simd
  do i=1,1
  enddo
  !$omp end simd
  !$omp critical
  !$omp simd
  do i=1,1
  enddo
  !$omp end simd
  !$omp end critical
  !$omp end sections
  !$omp end parallel
  print *,'pass'
end program
