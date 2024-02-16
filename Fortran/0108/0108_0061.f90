program main
integer,parameter :: N=100
real(kind=8),parameter :: val=1._8
real(kind=8),dimension(1:N)         :: a1,b1
real(kind=8),dimension(1:N,1:N)     :: a2,b2
real(kind=8),dimension(1:N,1:N,1:N) :: a3,b3

a1 = val
b1 = val
a1(N:1:-2)=a1(N:1:-2)+b1(N:1:-2)
a2 = val
b2 = val
a2(N:1:-2,N:1:-2)=a2(N:1:-2,N:1:-2)+b2(N:1:-2,N:1:-2)
a3 = val
b3 = val
a3(N:1:-2,N:1:-2,N:1:-2)=a3(N:1:-2,N:1:-2,N:1:-2)+b3(N:1:-2,N:1:-2,N:1:-2)

print *,sum(a1)+sum(a2)+sum(a3)
end program
