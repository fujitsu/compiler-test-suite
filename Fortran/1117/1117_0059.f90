program main
  integer a, num_threads, err_cnt
  integer OMP_GET_NUM_THREADS

  err_cnt = 0
  a = 0

!$omp parallel
  num_threads = OMP_GET_NUM_THREADS()
!$omp atomic
  a = a+1
!$omp barrier
!$omp flush(a)
  if(a .ne. num_threads) then
     err_cnt = 1
  end if
!$omp end parallel

  if(err_cnt .eq. 0) then
     write(*,*) "ok"
  else
     write(*,*) "FLUSH directive is not active"
  end if

end program main
