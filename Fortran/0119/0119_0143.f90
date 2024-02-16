program main
  parameter (n = 1000)
  real*4 a(n), b(n)
  do i=1,n
     b(i) = i * 0.1234
  enddo
  call sub1(a,b,n)
  if (abs(a(100)-(b(100)+b(98)+b(96)+b(94))) < 0.00001) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,n)
  real*4 a(n), b(n)
  do i=n,7,-1
     a(i) = b(i-4)+b(i)+b(i-2)+b(i-6)
  enddo
  return
end subroutine sub1
