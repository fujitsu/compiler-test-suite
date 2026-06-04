  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
i=0
  !$omp barrier
  !$omp task
  !$omp critical(aaa)
  !$omp flush
  !$omp critical(bbb)
  !$omp taskwait
  !$omp taskyield
  !$omp atomic
  i=i+1
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
i=0
  !$omp barrier
  !$omp task
  !$omp critical(ccc)
  !$omp flush
  !$omp critical(ddd)
  !$omp taskwait
  !$omp taskyield
  !$omp atomic
  i=i+1
  !$omp simd
  do i = 1, 1
     do j = 1, 1
     end do
  end do
  !$omp end simd
  !$omp end critical(ddd)
  !$omp end critical(ccc)
  !$omp critical(eee)
  !$omp flush
  !$omp critical(fff)
  !$omp taskwait
  !$omp taskyield
  !$omp atomic
  i=i+1
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
