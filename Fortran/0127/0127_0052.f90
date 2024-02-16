program main
  integer*8 aaa, bbb, ccc, i

  bbb = 1
  ccc = 2
  
  do i=1,50
     aaa = bbb + ccc + i
  end do
  
  if (aaa == 53) then
     print *,"OK"
  else
     print *,"NG",aaa
  end if
end program main

