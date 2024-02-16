program main
  parameter (n = 1000)
  integer*8 a(n), b(n), c(n)
  do i=1,n
     b(i) = i
     c(i) = i+1
  enddo
  call sub1(a,b,c,n)
  if (a(100) .eq. b(99)+b(100)+c(100)+b(101)+b(98)) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,c,n)
  integer*8 a(n), b(n), c(n)
  do i=3,n-1
     a(i) = b(i-1)+b(i)+c(i)+b(i+1)+b(i-2)
  enddo
  return
end subroutine sub1
