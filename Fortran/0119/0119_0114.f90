program main
  parameter (n = 1000)
  integer*4 a(n), b(n), c(n)
  do i=1,n
     b(i) = i
     c(i) = i+1
  enddo
  call sub1(a,b,c,n)
  if (a(100) .eq. c(102)+b(100)+b(102)+c(100)) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,c,n)
  integer*4 a(n), b(n), c(n)
  do i=1,n-2
     a(i) = c(i+2)+b(i)+b(i+2)+c(i)
  enddo
  return
end subroutine sub1
