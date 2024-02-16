program main
  parameter (n = 1000)
  integer*8 a(n), b(n)
  do i=1,n
     b(i) = i
  enddo
  call sub1(a,b,n)
  if (a(100) .eq. b(100)+b(103)) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,n)
  integer*8 a(n), b(n)
  do i=1,n-3
     a(i) = b(i)+b(i+3)
  enddo
  return
end subroutine sub1
