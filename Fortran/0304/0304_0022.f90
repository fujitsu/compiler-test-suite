subroutine sub(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c

  do i=1,n,32
     a(i) = b(i) + c(i)
  enddo
end subroutine sub

program main
  integer,parameter :: n=1000
  real(8),dimension(1:n) :: a,b,c

  a = 0.0
  b = 1.0
  c = 2.0

  call sub(a,b,c,n)

  print *,sum(a)
end program
