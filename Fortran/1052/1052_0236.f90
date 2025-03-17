program main
  use omp_lib
  integer, parameter :: task_num=100000
  integer :: sum, n_threads, i
  sum = 0

  !$omp parallel
  !$omp master
  n_threads = omp_get_num_threads()
  !$omp end master
  !$omp end parallel

  !$omp parallel num_threads(n_threads) private(i)
  do i=1,task_num
     !$omp taskgroup
     !$omp taskgroup
     !$omp task
     !$omp atomic update
     sum = sum + 1
     !$omp end task
     !$omp end taskgroup
     !$omp end taskgroup
  end do
  !$omp end parallel

  if (sum .ne. task_num * n_threads) then
     print *, "NG", sum
  end if
  print *, "OK"

end program main
