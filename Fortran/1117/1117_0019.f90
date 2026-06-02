program main
integer a(1024), count, buf
integer OMP_GET_THREAD_NUM

!$omp parallel
!$omp do schedule(dynamic, 5)
  do i=1, 1024
    a(i) = OMP_GET_THREAD_NUM()
  end do
!$omp end parallel

  count = 1
  buf = 1
  do i=2, 1024
     if(a(i-1) .gt. a(i)) then
        count = count+buf/5
        buf = 1
     else if(buf .eq. 5) then
        count = count+buf/5
        buf = 1
     else
        buf = buf+1
     end if
  end do

  if(count .ne. 205) then
     write(*,*) "SCHEDULE(DYNAMIC, chunk) may be not active.", count
  else
     write(*,*) "ok"
  end if

end
