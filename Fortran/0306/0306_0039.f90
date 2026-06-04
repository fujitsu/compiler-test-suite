subroutine foo(x,y,c0,c1,n)
  integer*8 n
  real(4),dimension(1:n) :: x,y
  real(4) c0, c1
  do i=1,n
     y(i) = c0 + x(i)*(c1 + x(i))
  enddo
  if (y(n) .eq. 871.0) then
    write(6,*) "OK"
  else
    write(6,*) "NG"
  endif
end subroutine

program main
  real(4),dimension(1:10) :: x,y
  real(4) c0, c1
  integer*8 n
  c0 = 0
  c1 = 1
  n = 10
  do i = 1,n
    y(i) = i *2
    x(i) = i + 2
    c0 = c0 + i
    c1 = c1 + i
  enddo
  call foo(x, y, c0, c1, n)
end program
