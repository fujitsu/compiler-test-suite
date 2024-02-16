program main
  parameter (n = 1000)
  integer*4 a(n), b(n), c(n)
  do i=1,n
     b(i) = i
     c(i) = i+1
  enddo
  call sub1(a,b,c,n)
  if (a(100) .eq. c(98)+b(100)+b(98)+c(100)+b(96)+c(96)+b(94)+c(94)) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,c,n)
  integer*4 a(n), b(n), c(n)
  do i=n,7,-1
     a(i) = c(i-2)+b(i)+b(i-2)+c(i)+b(i-4)+c(i-4)+b(i-6)+c(i-6)
  enddo
  return
end subroutine sub1
