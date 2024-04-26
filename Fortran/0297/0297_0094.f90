subroutine sub(x1,x2,x3,a,b,c,d,n)
  integer(8) :: x1,x2,x3 
  real(8),dimension(1:n) :: a,b,c,d

  do i=1,n
     if (x1 == 0) then
        a(i) = b(i)
     endif
     if (x2 == 0) then
        a(i) = c(i)
     endif
     if (x3 == 0) then
        c(i) = d(i)
     endif
  enddo

end subroutine sub

program main
  integer,parameter :: n=100
  integer(8) :: x1,x2,x3 
  real(8),dimension(1:n) :: a,b,c,d
  real(8),parameter :: res_a=200. , res_c=300.

  x1 = 1
  x2 = 0
  x3 = 0

  a = 0.0
  b = 1.0
  c = 2.0
  d = 3.0

  call sub(x1,x2,x3,a,b,c,d,n)

  if (sum(a) /= res_a) then
     print *, "ng ", "a = ", sum(a)
  else if (sum(c) /= res_c) then
     print *, "ng ", "c = ", sum(c)
  else
     print *, "ok"
  endif

end program main
