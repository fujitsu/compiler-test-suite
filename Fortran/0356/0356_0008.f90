program main
  integer*8::array(100,100,100)
  array(1:100,1:1,1:100) = 1

  if (array(12,1,2) == 1) then
     print *,"OK"
  else
     print *,"NG",array(12,1,2)
  end if

end program main
