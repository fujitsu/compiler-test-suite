subroutine sub(a,b,c,d,e,f,g,x,y)
real(8),dimension(1:100000) :: a,b,c,d,e,f,g,x,y
 do i=1,100000
  a(i) = (b(i)*c(i) + d(i)*e(i)) + (f(i)*g(i) + x(i)*y(i))
 enddo
 if (a(1) .eq. 42.0) then
   write(6,*) "OK"
 else
   write(6,*) "NG"
 endif
end subroutine

program main
  real(8),dimension(1:100000) :: a,b,c,d,e,f,g,x,y
  integer(4) i
  do i = 1,100000
    a(i) = i
    b(i) = i+1.0
    c(i) = i*2.0
    d(i) = i+i
    e(i) = i*3.0
    f(i) = i+2.0
    g(i) = i*4.0
    x(i) = i+3.0
    y(i) = i+4.0
  enddo
  call sub(a,b,c,d,e,f,g,x,y)
end program
