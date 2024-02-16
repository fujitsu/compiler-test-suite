program main
integer,parameter :: N=1
integer(kind=8),parameter :: val=1_8
integer(kind=8),dimension(1:N)         :: a1,b1
integer(kind=8),dimension(1:N,1:N)     :: a2,b2
integer(kind=8),dimension(1:N,1:N,1:N) :: a3,b3

a1 = val
b1 = val
a1(1:N:2)=a1(1:N:2)+b1(1:N:2)
a2 = val
b2 = val
a2(1:N:2,1:N:2)=a2(1:N:2,1:N:2)+b2(1:N:2,1:N:2)
a3 = val
b3 = val
a3(1:N:2,1:N:2,1:N:2)=a3(1:N:2,1:N:2,1:N:2)+b3(1:N:2,1:N:2,1:N:2)

print *,sum(a1)+sum(a2)+sum(a3)
end program
