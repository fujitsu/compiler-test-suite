  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
  !$omp task
  !$omp critical(aaa)
  !$omp atomic write
  i=1
  !$omp critical(bbb)
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical(bbb)
  !$omp end critical(aaa)
  !$omp end task
end subroutine s1
  subroutine s2
  !$omp task
  !$omp critical(ccc)
  !$omp atomic write
  i=1
  !$omp critical(ddd)
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical(ddd)
  !$omp end critical(ccc)
  !$omp critical(eee)
  !$omp atomic write
  i=1
  !$omp critical(fff)
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical(fff)
  !$omp end critical(eee)
  !$omp end task
end subroutine s2
end program
