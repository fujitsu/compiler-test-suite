program main
integer,parameter :: N=4
real(kind=8),parameter :: val=1._8
real(kind=8),dimension(1:N)         :: a1,b1
real(kind=8),dimension(1:N,1:N)     :: a2,b2
real(kind=8),dimension(1:N,1:N,1:N) :: a3,b3

if ((N<=2).or.(mod(N,2).ne.0)) then
  print *,"error"
  stop
endif

a1 = val
b1 = val
a1(1:N/2)=a1(N/2+1:N)+b1(2:N/2+1)
a2 = val
b2 = val
a2(1:N/2,1:N/2)=a2(N/2+1:N,N/2+1:N)+b2(2:N/2+1,2:N/2+1)
a3 = val
b3 = val
a3(1:N/2,1:N/2,1:N/2)=a3(N/2+1:N,N/2+1:N,N/2+1:N)+b3(2:N/2+1,2:N/2+1,2:N/2+1)

print *,sum(a1)+sum(a2)+sum(a3)
end program
