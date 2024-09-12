real(8) function APR_create_lastprivate(a,b,n)
real(8),dimension(1:n) :: a,b
real(8) x
x = 0._8
do i=1,n
  x = a(i) + 1
  b(i) = x
enddo
APR_create_lastprivate = x
end function

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a,b
real(8) x
real(8) APR_create_lastprivate
a=1._8
b=0._8
x = APR_create_lastprivate(a,b,n)
if (int(x)*n == int(sum(b))) then
  print *,"ok"
else
  print *,"ng: x=", x, ", sum(b)=", sum(b)
endif
end program
