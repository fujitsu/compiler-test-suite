    !$omp parallel
    !$omp task
    !$omp simd
    do i = 1, 1
    do j = 1, 1
    end do
    end do
    !$omp end simd
    !$omp end task
    !$omp end parallel
print *,'pass'
  end program
