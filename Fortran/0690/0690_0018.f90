  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
  !$omp task
  !$omp critical(a)
  !$omp critical(b)
  !$omp atomic write
  i=1
  !$omp critical(c)
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical(c)
  !$omp end critical(b)
  !$omp end critical(a)
  !$omp end task
end subroutine s1
  subroutine s2
  !$omp task
  !$omp critical(d)
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
  !$omp end critical(d)
  !$omp critical(g)
  !$omp critical(h)
  !$omp atomic write
  i=1
  !$omp critical(ii)
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical(ii)
  !$omp end critical(h)
  !$omp end critical(g)
  !$omp end task
end subroutine s2
end program
