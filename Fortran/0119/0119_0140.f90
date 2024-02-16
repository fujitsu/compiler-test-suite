program main
  parameter (n = 1000)
  integer*8 a(n), b(n), c(n)
  do i=1,n
     b(i) = i
     c(i) = i+1
  enddo
  call sub1(a,b,c,n)
  if (a(100) .eq. c(98)+b(98)+c(96)+b(99)+b(96)+c(99)+b(97)+c(97)) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,c,n)
  integer*8 a(n), b(n), c(n)
  do i=5,n
     a(i) = c(i-2)+b(i-2)+c(i-4)+b(i-1)+b(i-4)+c(i-1)+b(i-3)+c(i-3)
  enddo
  return
end subroutine sub1
