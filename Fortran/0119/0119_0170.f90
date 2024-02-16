program main
  parameter (n = 1000)
  real*8 a(n), b(n)
  do i=1,n
     b(i) = i * 0.1234
  enddo
  call sub1(a,b,n)
  if (dabs(a(100) - (b(99)+b(197)+b(200)+b(100)+b(101)+b(199)+b(98)+b(198))) < 0.0001) then
     print *,"OK"
  else
     print *,"NG",a(100)
  endif
end program main

subroutine sub1(a,b,n)
  real*8 a(n), b(n)
  do i=n-100,3,-1
     a(i) = b(i-1)+b(i+97)+b(i+100)+b(i)+b(i+1)+b(i+99)+b(i-2)+b(i+98)
  enddo
  return
end subroutine sub1
