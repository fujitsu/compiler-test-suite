program main
integer,parameter :: N=500
integer(kind=4),dimension(1:N) :: a,b,c
integer i

a = (/(int(i,kind=4),i=1,N)/)
b = (/(int(i*i-i,kind=4),i=1,N)/)
do i=1,N
  c(i) = MAX(a(i),b(i))
enddo
print *,c(N/2)
end program
