  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
    !$omp parallel
    !$omp master
    !$omp simd
    do i = 1, 1
       do j = 1, 1
       end do
    end do
    !$omp end simd
    !$omp end master
    !$omp end parallel
  end subroutine s1
  subroutine s2
    !$omp parallel
    !$omp master
    !$omp simd
    do i = 1, 1
       do j = 1, 1
       end do
    end do
    !$omp end simd
    !$omp end master
    !$omp master
    !$omp simd
    do i = 1, 1
       do j = 1, 1
       end do
    end do
    !$omp end simd
    !$omp end master
    !$omp end parallel
  end subroutine s2
end program