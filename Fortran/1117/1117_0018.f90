program main
integer a(1024), count, buf
integer OMP_GET_THREAD_NUM, OMP_GET_NUM_THREADS

!$omp parallel
!$omp do schedule(static, 5)
  do i=1, 1024
     a(i) = OMP_GET_THREAD_NUM()
  end do

!$omp end parallel

  count = 1
  buf = 1
  do i=2, 1024
     if(a(i-1) .ne. a(i)) then
        count = count+buf/5
        buf = 1
     else
        buf = buf+1
     end if
  end do

  if ( count .eq. 1 .and. OMP_GET_NUM_THREADS() .eq. 1) then
     write(*,*) "ok"
  else if(count .ne. 205) then
     write(*,*) "SCHEDULE(STATIC, chunk) is not active"
  else
     write(*,*) "ok"
  end if

end program main
