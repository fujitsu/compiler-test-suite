program main
  integer a, error_cnt, b(128)
  integer OMP_GET_THREAD_NUM

  a = 0
  b = -100
  error_cnt = 0

!$omp parallel sections firstprivate(a)
!$omp section
  b(OMP_GET_THREAD_NUM()+1) = a
  a = a+1
!$omp section
  if((a .ne. 0) .and. (b(OMP_GET_THREAD_NUM()+1) .ne. a-1)) then
     error_cnt = error_cnt+1
  end if
  b(OMP_GET_THREAD_NUM()+1) = a
  a = a+1
!$omp section
  if((a .ne. 0) .and. (b(OMP_GET_THREAD_NUM()+1) .ne. a-1)) then
     error_cnt = error_cnt+1
  end if
  b(OMP_GET_THREAD_NUM()+1) = a
  a = a+1
!$omp section
  if((a .ne. 0) .and. (b(OMP_GET_THREAD_NUM()+1) .ne. a-1)) then
     error_cnt = error_cnt+1
  end if
  b(OMP_GET_THREAD_NUM()+1) = a
  a = a+1
!$omp end parallel sections

  if((error_cnt .eq. 0) .and. (a .eq. 0)) then
     write(*,*) "ok"
  else
     write(*,*) "NG - ", a
  end if

end program main
