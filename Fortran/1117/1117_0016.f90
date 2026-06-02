program main
  integer a(1024), count

  a = 0
!$omp parallel
!$omp do schedule(dynamic)
  do i=1, 1024
    a(i) = a(i)+1
  end do
!$omp end parallel

  count = 0
  do i=1, 1024
     if(a(i) .ne. 1) count = count+1
  end do

  if(count .ne. 0) then
     write(*,*) "SCHEDULE(DYNAMIC) may be not active."
  else
     write(*,*) "ok"
  end if

end
