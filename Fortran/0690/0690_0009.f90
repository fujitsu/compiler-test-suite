  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
    !$omp task
    !$omp parallel
    !$omp sections
    !$omp simd
    do i = 1, 1
       do j = 1, 1
       end do
    end do
    !$omp end simd
    !$omp end sections
    !$omp end parallel
    !$omp end task
  end subroutine s1
  subroutine s2
    !$omp task
    !$omp parallel
    !$omp sections
    !$omp simd
    do i = 1, 1
       do j = 1, 1
       end do
    end do
    !$omp end simd
    !$omp end sections
    !$omp end parallel
    !$omp parallel
    !$omp sections
    !$omp simd
    do i = 1, 1
       do j = 1, 1
       end do
    end do
    !$omp end simd
    !$omp end sections
    !$omp end parallel
    !$omp end task
  end subroutine s2
end program
