subroutine inst1_1(a,n)
real(8),dimension(1:n) :: a
integer(8) :: i
do i=1,n
  a(i) = 1._8
enddo
end subroutine

subroutine inst1_2(a,n)
real(8),dimension(1:n) :: a
do i=1,n
  a(i) = 1._8
enddo
end subroutine

subroutine inst1_3(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = b(i)
enddo
end subroutine

subroutine inst1_4(a,x,n)
real(8),dimension(1:n) :: a
real(8) :: x
do i=1,n
  x = x + a(i)
enddo
end subroutine

subroutine inst1_5(x,n)
real(8) :: x
integer(8) :: i
do i=1,n
  x = 1._8
enddo
end subroutine

subroutine inst1_6(x,n)
real(8) :: x
integer(8) :: i
do i=1,n
  x = x + 1._8
enddo
end subroutine

program main
integer,parameter :: n=10 
real(8),dimension(1:n) :: a,b
real(8) :: x,y
real(8),parameter :: r=31.0_8, error=0.0_8

a = 1.
b = 1.
x = 0.
call inst1_1(a,n)
call inst1_2(a,n)
call inst1_3(a,b,n)
call inst1_4(a,x,n)
call inst1_5(y,n)
call inst1_6(y,n)

x = x + y + sum(a)
if (abs(x - r) .le. error) then
   print *,"ok"
else
   print *,"ng",abs(x - r), ".gt.", error
endif

end program
