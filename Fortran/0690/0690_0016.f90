  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
i=0
  !$omp parallel
  !$omp critical
  !$omp atomic
  i=i+1
  !$omp simd collapse(1)
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical
  !$omp end parallel
end subroutine s1
  subroutine s2
i=0
  !$omp parallel
  !$omp critical
  !$omp atomic
  i=i+1
  !$omp simd collapse(1)
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical
  !$omp critical
  !$omp atomic
  i=i+1
  !$omp simd collapse(1)
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical
  !$omp end parallel
end subroutine s2
end program
