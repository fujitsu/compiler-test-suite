real*8 a(10,10),b(10,10)
real*8 x(100),y(100)

do i=1,n
do j=1,n
a(i,j)=a(i-1,j-1)
a(i,j)=a(i,j) + a(i-1,j)
end do
end do
print *,a(1,1)
end
