subroutine maxmin01(x,y,a,b,n)
real(8),dimension(1:n) :: x,y,a,b
do i=1,n
  x(i) = x(i) + max(a(i),b(i))
  y(i) = y(i) + min(a(i),b(i))
enddo
end subroutine

subroutine maxmin02(x,y,a,b)
real(8) :: x,y,a,b
x = x + max(a,b)
y = y + min(a,b)
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: x,y,a,b
real(8),parameter :: error=0.0_8
real(8) :: sx,sy,sa,sb
x=0.1_8
y=0.1_8
a=0.1_8
b=0.1_8
call maxmin01(x,y,a,b,n)
sx=0.1_8
sy=0.1_8
sa=0.1_8
sb=0.1_8
call maxmin02(sx,sy,sa,sb)
if ((abs(x(n)-sx) .le. error) .and. (abs(y(n)-sy) .le. error)) then
  print *,"ok"
else
  print *,"ng"
endif
end program 
