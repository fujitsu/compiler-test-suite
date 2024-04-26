subroutine sub(a,b,c,ia,ib,n)
real(8),dimension(1:n) :: a,b,c
integer,dimension(1:n) :: ia,ib
do i=1,n
  a(i) = a(ia(i)) + c(i)
  b(i) = b(ib(i)) - c(i)
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a,b,c
real(8),parameter :: ans=7232.000000000000
real(8),parameter :: error=  0.00005
integer,dimension(1:n) :: ia,ib
a = 2.0
b = 3.0
c = 4.0
ia = (/(max(i-3,1),i=1,n)/)
ib = (/(i,i=1,n)/)
call sub(a,b,c,ia,ib,n)

if (abs(sum(a+b) - ans) .gt. error) then
  print *,"ng", sum(a+b), ans 
else
  print *,"ok"
endif
end program
