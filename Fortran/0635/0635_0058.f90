subroutine APR_create_lastprivate(a,b,n,x)
real(8),dimension(1:n) :: a,b
real(8) x
do i=1,n
  x = a(i) + 1
  b(i) = x
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a,b
real(8) x
x = 0._8
a=1._8
b=0._8
call APR_create_lastprivate(a,b,n,x)
if (int(x)*n == int(sum(b))) then
  print *,"ok"
else
  print *,"ng: x=", x, ", sum(b)=", sum(b)
endif
end program
