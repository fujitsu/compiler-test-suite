program main
  integer*8 aaa,bbb,ccc
  integer*8 i
  bbb = 1
  ccc = 2

  do i=1,50
     aaa = bbb + ccc + i
  end do
  
  print *,"OK"

end program main
