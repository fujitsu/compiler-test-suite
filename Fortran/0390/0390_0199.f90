subroutine s1
integer(8)::x(10,10,10),y(10,10,10),z(10,10,10)
do i=0,10
do j=0,10
do k=0,10
x(i,j,k) = i
y(i,j,k) = j
z(i,j,k) = k
end do
end do
end do
print *,x
end
print *,'pass'
end
