program main
  parameter (n = 1000)
  real*8 a(n), b(n)
  do i=1,n
     b(i) = i * 0.1234
  enddo
  call sub1(a,b,n)
  if (dabs(a(100) - (b(96)+b(99)+b(101)+b(95)+b(102)+b(98))) < 0.0001) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,n)
  real*8 a(n), b(n)
  do i=6,n-3
     a(i) = b(i-4)+b(i-1)+b(i+1)+b(i-5)+b(i+2)+b(i-2)
  enddo
  return
end subroutine sub1
