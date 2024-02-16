program main
integer,parameter :: N=100
real(kind=8),parameter :: val=1._8
real(kind=8),dimension(1:N,1:N) :: a,b

a = val
b = reshape((/(real(i,kind=8),i=1,N*N)/),(/N,N/))
do j=1,N-1
  do i=1,N-1
    a(i,j) = b(i+1,j) - b(i,j)
  enddo
enddo
print *,sum(a)
end program
