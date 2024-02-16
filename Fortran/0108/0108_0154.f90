program main
integer,parameter :: N=100
integer(kind=4),parameter :: val=1_4
integer(kind=4),dimension(1:N,1:N) :: a
integer(kind=4) x,y

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
