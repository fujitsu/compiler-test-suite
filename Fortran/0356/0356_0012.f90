program main
  integer*8::array(100)
  array = 10
  do i=1,0
     array(i) = i
  end do

  if (array(1) == 10) then
     print *,"OK"
  else
     print *,"NG",array(1)
  end if

end program main
