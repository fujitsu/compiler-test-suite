program main
  integer*8::array(100)

  do i=1,1
     array(i) = i
  end do

  if (array(1) == 1) then
     print *,"OK"
  else
     print *,"NG",array(1)
  end if

end program main
