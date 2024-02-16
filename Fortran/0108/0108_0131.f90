program main
integer,parameter :: N=100
integer(kind=8),parameter :: val=1_8
integer(kind=8),dimension(1:N)         :: a1,b1
integer(kind=8),dimension(1:N,1:N)     :: a2,b2
integer(kind=8) x,x1,x2,x3

if ((N < 4).or.(mod(N,4).ne.0)) then
  print *, "error"
endif 

a1 = val
b1 = val
x  = val
x1  = x - x
x2  = x1
x3  = x1
do i=1, N, 4
  a1(i) = a1(i) - b1(i)
  a1(i+1) = a1(i+1) - b1(i+1)
  a1(i+2) = a1(i+2) - b1(i+2)
  a1(i+3) = a1(i+3) - b1(i+3)
enddo
do i=1, N, 4
  x = x + a1(i)
  x1 = x1 + a1(i+1)
  x2 = x2 + a1(i+2)
  x3 = x3 + a1(i+3)
enddo
x = x+x1+x2+x3
if (x > val) then
 x = val
endif

a2 = val
b2 = val
do j=1, N
  do i=1, N, 4
    a2(i,j) = a2(i,j) - b2(i,j)
    a2(i+1,j) = a2(i+1,j) - b2(i+1,j)
    a2(i+2,j) = a2(i+2,j) - b2(i+2,j)
    a2(i+3,j) = a2(i+3,j) - b2(i+3,j)
  enddo
enddo
do j=1, N
  do i=1, N, 4
    x = x + a2(i,j)
    x = x + a2(i+1,j)
    x = x + a2(i+2,j)
    x = x + a2(i+3,j)
  enddo
enddo

print *,x
end program
