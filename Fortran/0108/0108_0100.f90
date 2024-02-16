program main
integer,parameter :: N=1
real(kind=4),parameter :: val=1._4
real(kind=4),dimension(1:N)         :: a1
real(kind=4),dimension(1:N,1:N)     :: a2
real(kind=4),dimension(1:N,1:N,1:N) :: a3
real(kind=4) x,y,z

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
