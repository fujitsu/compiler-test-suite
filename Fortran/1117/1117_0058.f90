program main
  integer b, err_cnt, upper, total

  b = 0
  err_cnt = 0

  upper = 100000
!$omp parallel
!$omp do
  do i=1, upper
!$omp atomic
     b = i+b
  end do
!$omp end parallel

  if(mod(upper, 2) .eq. 0) then
     total = (upper/2)*(upper+1)
  else
     total = ((upper+1)/2)*upper
  end if

  if(b .ne. total) then
     err_cnt = 1
  end if

  if(err_cnt .eq. 0) then
     write(*,*) "ok"
  else
     write(*,*) "ATOMIC is not active", b, total
  end if

end program main
