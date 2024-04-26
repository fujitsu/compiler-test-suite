subroutine sub(a,b,c,x,n)
real(8),dimension(*) :: a,b,c,x
do i=1,n
   if (x(i) .gt. 10.0) then
      a(i) = b(i) + c(i)
   endif
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a,b,c,x
real(8),parameter :: ans= 650.0000000000000000
real(8),parameter :: error=  0.00005
a = 2.0
b = 3.0
c = 4.0
x = (/(real(i,kind=8),i=1,n)/)
call sub(a,b,c,x,n)

if (abs(sum(a) - ans) .gt. error) then
  print *,"ng", sum(a), ans 
else
  print *,"ok"
endif
end program
