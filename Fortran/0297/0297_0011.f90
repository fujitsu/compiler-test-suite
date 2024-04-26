subroutine inst2_1(a,b,n)
real(8),dimension(1:n) :: a,b
integer(8) :: i
do i=1,n
  a(i) = 1._8
  b(i) = 1._8
enddo
end subroutine

subroutine inst2_2(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = 1._8
  b(i) = 1._8
enddo
end subroutine

subroutine inst2_3(a,b,c,d,n)
real(8),dimension(1:n) :: a,b,c,d
do i=1,n
  a(i) = b(i)
  c(i) = d(i)
enddo
end subroutine

subroutine inst2_4(a,x,y,n)
real(8),dimension(1:n) :: a
real(8) :: x,y
do i=1,n
  x = x + a(i)
  y = y + a(i)
enddo
end subroutine

subroutine inst2_5(x,y,n)
real(8) :: x,y
integer(8) :: i
do i=1,n
  x = 1._8
  y = 1._8
enddo
end subroutine

subroutine inst2_6(x,y,n)
real(8) :: x,y
integer(8) :: i
do i=1,n
  x = x + 1._8
  y = y + 1._8
enddo
end subroutine

program main
integer,parameter :: n=10 
real(8),dimension(1:n) :: a,b,c,d
real(8) :: x,y
real(8),parameter :: r=32.0_8, error=0.0_8

a = 1.
b = 1.
c = 1.
d = 1.
x = 0.
y = 0.
call inst2_1(a,b,n)
call inst2_2(a,b,n)
call inst2_3(a,b,c,d,n)
call inst2_4(a,x,y,n)
call inst2_5(x,y,n)
call inst2_6(x,y,n)

x = x + y + sum(a)
if (abs(x - r) .le. error) then
   print *,"ok"
else
   print *,"ng", x, y
endif

end program
