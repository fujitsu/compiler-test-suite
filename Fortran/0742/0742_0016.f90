integer ::y(1000,1000),yy(:,:),k=1
allocatable yy
allocate(yy(2,2))
y=reshape((/(j,j=1,1000*1000)/),(/1000,1000/))
yy=y(1:1000:500,1:1000:500)
call sub1(y(1:1000:500,1:1000:500))
yy=y(1000:1:-500,1000:1:-500)
call sub1(y(1000:1:-500,1000:1:-500))
yy=y(k:1000:500,k:1000:k+500-k)
call sub1(y(k:1000:k+500-k,k:1000:k+500-k))
yy=y(1000:k:-500,1000:k:-500)
call sub1(y(1000:k:-500*k,1000:k:-500*k))
print *,'pass'
contains
subroutine sub1(x)
integer x(1:,1:)
if (size(x)/=2*2)write(6,*) "NG"
do i2=1,2
do i1=1,2
if (x(i1,i2)/=yy(i1,i2))write(6,*) "NG"
end do
end do
end subroutine
end
