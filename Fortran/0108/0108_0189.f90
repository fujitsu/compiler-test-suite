program main
integer,parameter :: N=2
integer(kind=8),parameter :: val=1_8
integer(kind=8),dimension(1:N,1:N) :: a,b

a = val
b = reshape((/(int(i,kind=8),i=1,N*N)/),(/N,N/))
do j=1,N-1
  do i=1,N-1
    a(i,j) = b(i+1,j) - b(i,j)
  enddo
enddo
print *,sum(a)
end program
