program main
  use omp_lib
  integer, parameter :: task_num=100
  integer :: n_threads, i, j
  integer :: sum(2)

  !$omp parallel
  !$omp master
  n_threads = omp_get_num_threads()
  !$omp end master
  !$omp end parallel

  !$omp parallel num_threads(n_threads) private(sum)
  !$omp parallel num_threads(n_threads) private(i) shared(sum)
  !$omp single
  do i=1,2
     sum(i) = 0
     !$omp task private(j)
     !$omp taskgroup
     do j=1,task_num
        !$omp task
        !$omp atomic update
        sum(i) = sum(i) + 1
        !$omp end task
     end do
     !$omp end taskgroup
     if (sum(i) .ne. task_num) print *, "NG", sum
     !$omp end task
  end do
  !$omp end single
  !$omp end parallel
  !$omp end parallel

  print *, "OK"

end program main
