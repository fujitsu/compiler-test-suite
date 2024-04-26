program main
  implicit none
  integer*8 array(1000)
  integer t,i
  do i=1,1000
     array(i) = loc(t)
  end do
  if (array(1) == loc(t)) then
    print *,"PASS"
  else
    print *,"NG"
  endif
end program main
