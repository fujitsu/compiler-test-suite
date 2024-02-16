program main
integer,parameter :: N=1
integer(kind=4),parameter :: val=1_4
integer(kind=4),dimension(1:N)         :: a1
integer(kind=4),dimension(1:N,1:N)     :: a2
integer(kind=4),dimension(1:N,1:N,1:N) :: a3
integer(kind=4) x,y,z

a1 = val
x  = val
do i=1, N
  x = x + a1(i)
enddo

a2 = val
y  = val
do i=1, N
  do j=1, N
    y = y + a2(i,j)
  enddo
enddo

a3 = val
z  = val
do i=1, N
  do j=1, N
    do k=1, N
      z = z + a3(i,j,k)
    enddo
  enddo
enddo

print *,x+y+z
end program
