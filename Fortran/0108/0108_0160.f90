program main
integer,parameter :: N=2
integer(kind=4),parameter :: val=1_4
integer(kind=4),dimension(1:N)         :: a1,b1
integer(kind=4),dimension(1:N,1:N)     :: a2,b2
integer(kind=4),dimension(1:N,1:N,1:N) :: a3,b3

a1 = (/(int(mod(i,3),kind=4),i=1,N)/)
b1 = (/(int(mod(i,3),kind=4),i=1,N)/)
a2 = reshape((/(int(mod(i,3),kind=4),i=1,N*N)/),(/N,N/))
b2 = reshape((/(int(mod(i,3),kind=4),i=1,N*N)/),(/N,N/))
a3 = reshape((/(int(mod(i,3),kind=4),i=1,N*N*N)/),(/N,N,N/))
b3 = reshape((/(int(mod(i,3),kind=4),i=1,N*N*N)/),(/N,N,N/))

a3(:,1,1) = a1 + a2(:,1)
b3(1,1,:) = b1 + b2(1,:)

print *,sum(a3-b3)*val
end program
