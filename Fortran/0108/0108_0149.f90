program main
integer,parameter :: N=32
real(kind=8),parameter :: val=1._8
real(kind=8),dimension(1:N,1:N) :: a
real(kind=8) x,y

a = val
x = val
y = val
do j=1,N
  do i=1,N
    if (a(i,j).eq.i) then
      x = x - a(i,j)
    else
      x = x - a(i,j)
    endif
  enddo
  do i=1,N
    if (a(i,j).eq.N/2) then
      y = y + a(i,j)
    else
      y = y - a(i,j)
    endif
  enddo
enddo

print *,x+y
end program
