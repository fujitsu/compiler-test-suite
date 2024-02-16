program main
integer,parameter :: N=300
integer(kind=4),parameter :: val=1_4
integer(kind=4),dimension(1:N,1:N) :: a,b

a = val
b = reshape((/(int(i,kind=4),i=1,N*N)/),(/N,N/))
do j=1,N-1
  do i=1,N-1
    a(i,j) = b(i+1,j) - b(i,j)
  enddo
enddo
print *,sum(a)
end program
