subroutine sub(x1,x2,x3,x4,x5,x6,a,b,c,d,e,f,n)
  integer(8) :: x1,x2,x3,x4,x5,x6
  real(8),dimension(1:n) :: a,b,c,d,e,f

  do i=1,n
     if (x1 == 0) then
        a(i) = 1.0
     endif
     if (x2 == 0) then
        b(i) = 1.0
     endif
     if (x3 == 0) then
        c(i) = 1.0
     endif
  enddo

  do i=1,n
     if (x4 == 0) then
        d(i) = 1.0
     endif
     if (x5 == 0) then
        e(i) = 1.0
     endif
     if (x6 == 0) then
        f(i) = 1.0
     endif
  enddo

end subroutine sub

program main
  integer,parameter :: n=10
  integer(8) :: x1,x2,x3,x4,x5,x6
  real(8),dimension(1:n) :: a,b,c,d,e,f
  real(8),parameter :: res=10.

  x1 = 0
  x2 = 1
  x3 = 0
  x4 = 1
  x5 = 0
  x6 = 1

  a = 0.0
  b = 0.0
  c = 0.0
  d = 0.0
  e = 0.0
  f = 0.0

  call sub(x1,x2,x3,x4,x5,x6,a,b,c,d,e,f,n)

  if (sum(a) /= res) then
     print *, "ng ", "a = ", sum(a)
  else if (sum(b) /= 0.) then
     print *, "ng ", "b = ", sum(b)
  else if (sum(c) /= res) then
     print *, "ng ", "c = ", sum(c)
  else if (sum(d) /= 0.) then
     print *, "ng ", "d = ", sum(d)
  else if (sum(e) /= res) then
     print *, "ng ", "e = ", sum(e)
  else if (sum(f) /= 0.) then
     print *, "ng ", "f = ", sum(f)
  else
     print *, "ok"
  endif

end program main
