program main
  integer*8::array(100)

  do i=1,100
     array(i) = i
  end do

  if (array(1) == 1 .and. array(2) == 2) then
     print *,"OK"
  else
     print *,"NG",array
  end if

end program main
