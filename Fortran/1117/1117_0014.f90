program main
  integer a, error_cnt, b(128), thread_num, num_threads, err_pri
  integer omp_get_thread_num, omp_get_num_threads

  err_pri = 0
  error_cnt = 0
  a = 100
  b = 0

!$omp parallel private(thread_num)
  num_threads = OMP_GET_NUM_THREADS()
!$omp do lastprivate(a)
  do i=1, 32
     a = i
  end do
!$omp end do
  thread_num = OMP_GET_THREAD_NUM()+1
  b(thread_num) = a
!$omp end parallel

  do i=1, num_threads
     if(b(i) .ne. 32) then
        err_pri = 1
     end if
  end do

  if(a .ne. 32) then
     error_cnt = 1
  end if

  if((error_cnt .ne. 0) .or. (err_pri .ne. 0)) then
     write(*,*) "LASTPRIVATE clause is not active"
  else
     write(*,*) "ok"
  end if

end program main
