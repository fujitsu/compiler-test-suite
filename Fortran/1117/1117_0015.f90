program main
  integer a(1024), count, num_threads
  integer OMP_GET_NUM_THREADS
  integer OMP_GET_THREAD_NUM

  count = 0

!$omp parallel
  num_threads = OMP_GET_NUM_THREADS()
!$omp do schedule(static)
  do i=1, 1024
     a(i) = OMP_GET_THREAD_NUM()
  end do

!$omp end parallel

  count = 1
  do i=2, 1024
     if(a(i-1) .ne. a(i)) count = count+1
  end do

  if(count .ne. num_threads) then
     write(*,*) "SCHEDULE(STATIC) is not active"
  else
     write(*,*) "ok"
  end if

end program main
