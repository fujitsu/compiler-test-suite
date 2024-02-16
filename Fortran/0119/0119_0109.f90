program main
  parameter (n = 1000)
  integer*4 a(n), b(n)
  do i=1,n
     b(i) = i
  enddo
  call sub1(a,b,n)
  if (a(100) .eq. b(100)+b(101)+b(102)+b(103)+b(104)+b(105)) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,n)
  integer*4 a(n), b(n)
  do i=1,n-5
     a(i) = b(i)+b(i+1)+b(i+2)+b(i+3)+b(i+4)+b(i+5)
  enddo
  return
end subroutine sub1
