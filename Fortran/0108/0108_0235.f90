program main
integer,parameter :: N=500
real(kind=8),dimension(1:N) :: a
integer i

a = (/(real(i,kind=8),i=1,N)/)
do i=1,N-1
  a(i) = MAX(a(i),a(i+1))
enddo
print *,a(1),a(N-1)
end program
