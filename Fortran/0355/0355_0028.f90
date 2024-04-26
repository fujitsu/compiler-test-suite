program main
  real(kind=4) a(1000),b(1000)
  b=1.0
  call sub(a,b,400)
  print *,"OK"
end program main

subroutine sub(a,b,n)
  real(kind=4) a(n),b(n)
  do i=1,n
     a(i) = b(i) + 10
  enddo
end subroutine sub

