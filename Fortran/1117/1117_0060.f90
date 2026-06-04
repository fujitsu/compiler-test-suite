program main
  integer a

  do i=1, 10
     a = i
  end do

  !$omp parallel
  if(a .eq. 10) then
     goto 100
  end if

  a = 0

100 continue
  !$omp end parallel

  if(a .ne. 10) then
    print *, 'NG'
  else
    print *, 'ok'
  end if

end program main
