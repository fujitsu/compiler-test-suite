program main
  parameter (n = 1000)
  real*4 a(n), b(n)
  do i=1,n
     b(i) = i * 0.1234
  enddo
  call sub1(a,b,n)
  if (abs(a(100) - (b(106)+b(107)+b(103)+b(100)+b(102)+b(101)+b(104)+b(105))) < 0.0001) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,n)
  real*4 a(n), b(n)
  do i=1,n-8
     a(i) = b(i+6)+b(i+7)+b(i+3)+b(i)+b(i+2)+b(i+1)+b(i+4)+b(i+5)
  enddo
  return
end subroutine sub1
