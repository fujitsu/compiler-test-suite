program test01
  complex*16::a(2,4)
  complex*16::b(2,4)
  data a/8*(0.1,0.2)/
  data b/8*(0.2,0.3)/
  do j=1,2,1
     b(1,j) = a(1,j+1)+a(1,j+2)
     b(1,j) = a(1,j)+b(2,j)
     print *, ""
  end do
  if (b(1,1) .ne. b(1,2)) then
   write(6,*) "ng"
  else
   write(6,*) "ok"
  endif

end program test01
