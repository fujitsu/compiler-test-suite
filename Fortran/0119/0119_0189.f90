program main
  parameter (n = 1000)
  real*8 a(n), b(n)
  do i=1,n
     b(i) = i * 0.1234
     a(i) = i
  enddo
  call sub1(a,b,n)
  if (abs(a(100)-115.7102003097534) < 0.00001) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,n)
  real*8 a(n), b(n)
  do i=1,n-6
     a(i) = b(i+3)+b(i)
     b(i+2) = a(i+5)
  enddo
  return
end subroutine sub1
