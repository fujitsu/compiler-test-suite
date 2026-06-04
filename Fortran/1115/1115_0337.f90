program main
  integer OMP_GET_THREAD_NUM
  integer tn

  !$omp parallel private(tn)
  tn = omp_get_thread_num()
  !$omp master
  if(tn .ne. 0) stop
  !$omp end master
  !$omp end parallel
  print *, 'OK'
end program main
      
