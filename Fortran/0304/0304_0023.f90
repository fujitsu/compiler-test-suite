subroutine sub(a1,a2,b,c,n)
  real*8 a1(n),a2(n),b(n)
  integer*8 c(n)

  do i=1,n-1
     a1(i) = b(c(i))
     a2(i) = b(c(i)+1)
  enddo
end subroutine sub

program main
  integer,parameter :: n=100
  real*8 a1(n),a2(n),b(n)
  integer*8 c(n)

  a1 = 0.0
  a2 = 0.0
  b = 1.0
  c = (/(i,i=1,n)/)

  call sub(a1,a2,b,c,n)

  print *,a1(1)+a2(n-1)
end program
