subroutine sub(a,b,c,d,e,f,w,x,y,z,n)
real(8),dimension(1:n) :: a,d,e
real(8),dimension(1:n,1:n) :: b,f
real(8),dimension(1:n,1:n,1:n) :: c,w
integer(4),dimension(1:n) :: x,y,z

do k=1,n
 do j=1,n
  do i=1,n
    c(i,j,k) = a(i) + b(i,j) + c(i,j,k) + d(i) + e(i) + f(i,k) + w(x(i),y(i),z(i))
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=10000000
integer,parameter :: n=100
real(8),dimension(1:n) :: a,d,e
real(8),dimension(1:n,1:n) :: b,f
real(8),dimension(1:n,1:n,1:n) :: c,w
integer(4),dimension(1:n) :: x,y,z

a = 1.
b = 1.
c = 1.
d = 2.
e = 3.
f = 1.
w = 1.
x = 1
y = 1
z = 1

call sub(a,b,c,d,e,f,w,x,y,z,n)
if (int(sum(c)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(c)), ians
endif
end program
