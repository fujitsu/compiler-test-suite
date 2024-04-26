subroutine test(a,b,c,d,x,y,z,n)
  real(kind=4) :: a
  real(kind=4),dimension(1:n) :: b,c,d
  integer(kind=8) :: x
  integer(kind=8),dimension(1:n) :: y,z

  do i=1,n
     if (x == 0) then 
     if (y(i) == z(i)) then 
        a = b(i)
        c(1) = d(i)
     endif
     endif
  enddo
end subroutine test

program main
  integer,parameter :: n=100
  real(kind=4) :: a
  real(kind=4),dimension(1:n) :: b,c,d
  integer(kind=8) :: x
  integer(kind=8),dimension(1:n) :: y,z

  a = 0.
  b = (/(i,i=1,n)/)
  c = 0.
  d = (/(i,i=1,n)/)
  x = 0
  y = 1
  do i=1,n
     if (i .gt. n/2) then
        z(i) = 0
     else
        z(i) = 1
     endif
  enddo

  call test(a,b,c,d,x,y,z,n)

  print *, a
  print *, c(1)

end program main
