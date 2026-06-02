program main
  integer a(1024), err_fir

  err_fir = 0
  a = 100

!$omp parallel firstprivate(a)
  do i=1, 1024
     if(a(i) .ne. 100) then
        err_fir = 1
     end if
  end do
  do i=1, 1024
     a(i) = i
  end do
!$omp end parallel

  do i=1, 1024
     if(a(i) .ne. 100) then
        err_fir = 1
        exit
     end if
  end do

  if(err_fir .ne. 0) then 
     write(*,*) "FIRSTPRIVETE clause is not active"
  else
     write(*,*) "ok"
  end if

end program main
