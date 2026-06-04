program main
  integer a, b(128), error_cnt, max_threads
  integer OMP_GET_NUM_THREADS
  integer OMP_GET_THREAD_NUM

  error_cnt = 0

  a = 0
  b = 0

!$omp parallel if(a .eq. 0)
  max_threads = OMP_GET_NUM_THREADS()
  b(OMP_GET_THREAD_NUM()+1) = 1
!$omp end parallel

  do i=1, max_threads
     if(b(i) .ne. 1) then
        error_cnt = error_cnt+1
     end if
  end do

!$omp parallel if(a .ne. 0)
     a = OMP_GET_NUM_THREADS()
!$omp end parallel

  do i=1, max_threads
     if(b(i) .ne. 1) then
        error_cnt = error_cnt+1
     end if
  end do
  if(a .ne. 1) error_cnt = error_cnt+1

  if(error_cnt .eq. 0) then
     write(*,*) "ok"
  else
     write(*,*) "IF clause is not active"
  end if

end program main
