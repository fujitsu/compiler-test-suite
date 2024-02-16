program main
  parameter (n = 1000)
  real*8 a(n), b(n), c(n)
  do i=1,n
     b(i) = i * 0.1234
     c(i) = i * 0.2345
  enddo
  call sub1(a,b,c,n)
  if (dabs(a(100) - (b(103)+b(100)+b(102)+c(100))) < 0.0001) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,c,n)
  real*8 a(n), b(n), c(n)
  do i=1,n-3
     a(i) = b(i+3)+b(i)+b(i+2)+c(i)
  enddo
  return
end subroutine sub1
