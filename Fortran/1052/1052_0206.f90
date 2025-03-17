program main
  integer, parameter :: task_num=100
  integer :: sum1, sum2, i, j, k

  sum1 = 0
  sum2 = 0

  !$omp parallel
  !$omp single
  do i=1,2
     !$omp task firstprivate(sum1, sum2, j, k)

     !$omp taskgroup
     do j=1,task_num
        !$omp task shared(sum1)
        !$omp atomic update
        sum1 = sum1 + 1
        !$omp end task
     end do
     !$omp end taskgroup
     if (sum1 .ne. task_num) then
        print *, "NG", sum1
     end if

    !$omp taskgroup
     do k=1,task_num
        !$omp task shared(sum2)
        !$omp atomic update
        sum2 = sum2 + 1
        !$omp end task
     end do
     !$omp end taskgroup
     if (sum2 .ne. task_num) then
        print *, "NG", sum2
     end if

     !$omp end task
  end do
  !$omp end single
  !$omp end parallel

  print *, "OK"

end program main
