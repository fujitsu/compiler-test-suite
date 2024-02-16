program main
integer,parameter :: N=2
real(kind=8),dimension(1:N) :: a,b,c
integer i

a = (/(real(i,kind=8),i=1,N)/)
b = (/(real(i*i-i,kind=8),i=1,N)/)
do i=1,N
  c(i) = MAX(a(i),b(i))
enddo
print *,c(N/2)
end program
