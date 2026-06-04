  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
i=0
  !$omp  taskgroup
  !$omp task
  !$omp cancel taskgroup
  !$omp critical(aaa) hint(8_1)
  !$omp flush
  !$omp critical(bbb)hint(1_2)
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
  !$omp end taskgroup
end subroutine s1
  subroutine s2
i=0
  !$omp  taskgroup
  !$omp task
  !$omp cancel taskgroup
  !$omp critical(ccc)hint(1_8)
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
  !$omp cancel taskgroup
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
  !$omp  end taskgroup
end subroutine s2
end program
