program main
integer,parameter :: N=2
integer(kind=4),parameter :: val=1_4
integer(kind=4),dimension(1:N) :: a1
integer(kind=4),dimension(1:N,1:N) :: a2
integer(kind=4),dimension(1:N,1:N,1:N) :: a3

a1 = val
a2 = val
a3 = val

print *,sum(a1)+sum(a2)+sum(a3)
end program
