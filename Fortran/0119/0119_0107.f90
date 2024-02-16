program main
  parameter (n = 1000)
  integer*4 a(n), b(n)
  do i=1,n
     b(i) = i
  enddo
  call sub1(a,b,n)
  if (a(100) .eq. b(98)+b(100)+b(102)+b(104)) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,n)
  integer*4 a(n), b(n)
  do i=3,n-4
     a(i) = b(i-2)+b(i)+b(i+2)+b(i+4)
  enddo
  return
end subroutine sub1
