program main
  parameter (n = 1000)
  real*8 a(n), b(n), c(n)
  do i=1,n
     b(i) = i * 0.1234
     c(i) = i * 0.2345
  enddo
  call sub1(a,b,c,n)
  if (dabs(a(100) - (c(101)+b(100)+b(101)+c(100)+b(102)+c(102)+b(103)+c(103))) < 0.0001) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,c,n)
  real*8 a(n), b(n), c(n)
  do i=n-3,1,-1
     a(i) = c(i+1)+b(i)+b(i+1)+c(i)+b(i+2)+c(i+2)+b(i+3)+c(i+3)
  enddo
  return
end subroutine sub1
