program main
integer,parameter :: ians=5000000
integer,parameter :: n=100
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
type str
 real(8),dimension(1:n) :: x
 real(8),dimension(1:n,1:n) :: y
 real(8),dimension(1:n,1:n,1:n) :: z
end type str
type(str) :: st1,st2

a = 1.
b = 1.
st1%x = 1.
st1%y = 1.
st1%z = 1.
st2%x = 0.
st2%y = 0.
st2%z = 0.

do k=1,n
 do j=1,n
  do i=1,n
     st2%x(i) = st1%x(i)
     st2%y(i,j) = st1%y(i,j)
     st2%z(i,j,k) = st1%z(i,j,k) + st2%y(i,j) + st2%x(i) + a(i) + b(i,j)
  enddo
 enddo
enddo

if (int(sum(st2%z)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(st2%z)), ians
endif
end program
