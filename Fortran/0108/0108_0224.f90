program main
integer,parameter :: N=2
integer(kind=4),dimension(1:N) :: a
integer i

a = (/(int(i,kind=4),i=1,N)/)
do i=1,N-1
  a(i) = MAX(a(i),a(i+1))
enddo
print *,a(1),a(N-1)
end program
