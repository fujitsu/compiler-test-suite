program main
integer,parameter :: N=100
real(kind=4),parameter :: val=1._4
real(kind=4),dimension(1:N)         :: a1,b1
real(kind=4),dimension(1:N,1:N)     :: a2,b2
real(kind=4),dimension(1:N,1:N,1:N) :: a3,b3

a1 = (/(real(mod(i,3),kind=4),i=1,N)/)
b1 = (/(real(mod(i,3),kind=4),i=1,N)/)
a2 = reshape((/(real(mod(i,3),kind=4),i=1,N*N)/),(/N,N/))
b2 = reshape((/(real(mod(i,3),kind=4),i=1,N*N)/),(/N,N/))
a3 = reshape((/(real(mod(i,3),kind=4),i=1,N*N*N)/),(/N,N,N/))
b3 = reshape((/(real(mod(i,3),kind=4),i=1,N*N*N)/),(/N,N,N/))

a3(:,1,1) = a1 + a2(:,1)
b3(1,1,:) = b1 + b2(1,:)

print *,sum(a3-b3)*val
end program
