program main
integer,parameter :: N=100
integer(kind=8),parameter :: val=1_8
integer(kind=8),dimension(1:N)         :: a1,b1
integer(kind=8),dimension(1:N,1:N)     :: a2,b2
integer(kind=8),dimension(1:N,1:N,1:N) :: a3,b3

a1 = val
b1 = val
do i=1, N-1
  a1(i+1) = a1(i) + b1(i)
enddo
do i=N, 2, -1
  a1(i-1) = a1(i) - b1(i)
enddo

a2 = val
b2 = val
do i=1, N-1
  do j=1, N
    a2(i+1,j) = a2(i,j) + b2(i,j)
  enddo
enddo
do i=N, 2, -1
  do j=N, 1, -1
    a2(i-1,j) = a2(i,j) - b2(i,j)
  enddo
enddo

a3 = val
b3 = val
do i=1, N-1
  do j=1, N
    do k=1, N
      a3(i+1,j,k) = a3(i,j,k) + b3(i,j,k)
    enddo
  enddo
enddo
do i=N, 2, -1
  do j=N, 1, -1
    do k=N, 1, -1
      a3(i-1,j,k) = a3(i,j,k) - b3(i,j,k)
    enddo
  enddo
enddo

print *,sum(a3)-sum(a1)+sum(a2)
end program
