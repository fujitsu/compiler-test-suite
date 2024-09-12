  !$omp parallel sections
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end parallel sections
  print *,'pass'
end program
