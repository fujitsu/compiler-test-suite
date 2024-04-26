program main
  integer,parameter :: n=80
  real(8) :: s, val
  real(8),dimension(n) :: a, b
  real(8),dimension(n) :: x
  call sub(x, a, b, s, val, n)

  do i=1,n

     if (x(i).eq.0) then

        a(1) = a(1) * 2.0

     endif

  enddo

  print *, s
  print *, a(1)
  print *, b(1)
end program main

subroutine sub(x, a, b, s, val, n)
  real(8) :: s, val
  real(8),dimension(n) :: x
  real(8),dimension(n) :: a(n), b(n)
  s = 1.0
  val = 2.0
  do i=1,n
     x(i) = mod(i,2)
     a(i) = 1.0
     b(i) = 2.0
  enddo
end subroutine sub
