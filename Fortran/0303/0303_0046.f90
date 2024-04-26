subroutine foo(a,b,c,n,d)
  integer(KIND=4) :: i,j,n
  real(KIND=8)    :: a(n,n), b(n,n),c,d(n,n)

  do j=1,n
     do i=1,n
        a(i,j) = b(i,j)*c
        d(i,j) = b(i,j)*c
     enddo
  enddo
end subroutine

program main
  integer(KIND=4),parameter :: n = 10
  real(KIND=8)    :: a(n,n), b(n,n),c,d(n,n)
  a = 0.0
  b = 1.0
  c = 1.0

  call foo(a,b,c,n,d)
  print *, sum(int(a))
  print *, sum(int(d))
  
end program main
