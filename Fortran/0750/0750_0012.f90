module mod
integer,protected:: mvar
end module

use mod
integer var
real,parameter:: d=3.0
real,parameter:: e=4.0
real,parameter:: f=5.0
integer,intrinsic:: sin
integer(2),volatile:: g

do i=1,var
end do
do i=1,mvar
end do
do i=1,100
end do
do i=1,g
end do
end

subroutine sub(h,j,k)
integer(8),value:: h
integer(8),optional:: j
integer(8),target:: k
integer(8),save:: l

do i=1,h
end do
do i=1,j
end do
do i=1,k
end do
do i=1,l
end do
end
