subroutine sub(x1,x2,a,b,c,n)
  integer(8) :: x1,x2
  real(8),dimension(1:n) :: a,b,c

  do i=1,n
     if (x1 == 0) then
        a(i) = b(i)
     endif
     if (x2 == 0) then
        a(i) = c(i)
     endif
  enddo

end subroutine sub

program main
  integer,parameter :: n=100
  integer(8) :: x1,x2
  real(8),dimension(1:n) :: a,b,c
  real(8),parameter :: res_a=200.

  x1 = 1
  x2 = 0

  a = 0.0
  b = 1.0
  c = 2.0

  call sub(x1,x2,a,b,c,n)
  if (sum(a) /= res_a) then
     print *, "ng ", "a = ", sum(a)
  else
     print *, "ok"
  endif

end program main
