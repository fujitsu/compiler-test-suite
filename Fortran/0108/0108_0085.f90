program main
integer,parameter :: N=100
real(kind=8),parameter :: val=1._8
real(kind=8),dimension(1:N)         :: a1,b1
real(kind=8),dimension(1:N,1:N)     :: a2,b2
real(kind=8),dimension(1:N,1:N,1:N) :: a3,b3

a1 = val
b1 = val
a1(2:N)=a1(1:N-1)+b1(1:N-1)
a2 = val
b2 = val
a2(2:N,2:N)=a2(1:N-1,1:N-1)+b2(1:N-1,1:N-1)
a3 = val
b3 = val
a3(2:N,2:N,2:N)=a3(1:N-1,1:N-1,1:N-1)+b3(1:N-1,1:N-1,1:N-1)

print *,sum(a1)+sum(a2)+sum(a3)
end program
