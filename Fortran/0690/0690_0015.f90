  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
  !$omp parallel
  !$omp critical(a),hint(1)
  !$omp atomic write
  i=1
  !$omp critical(b),hint(10000)
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical(b)
  !$omp end critical(a)
  !$omp end parallel
end subroutine s1
  subroutine s2
  !$omp parallel
  !$omp critical(c) hint(200)
  !$omp atomic write
  i=1
  !$omp critical(d),hint(128)
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical(d)
  !$omp end critical(c)
  !$omp critical(e)
  !$omp atomic write
  i=1
  !$omp critical(f)
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical(f)
  !$omp end critical(e)
  !$omp end parallel
end subroutine s2
end program
