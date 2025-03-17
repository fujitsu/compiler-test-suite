parameter (n=10)
real(8),dimension(n,n)::a,b,c
a=reshape((/(j,j=1,100)/),(/10,10/))
b=a
call sub1(a(1:10:2,1:10:2),b(1:10:2,1:10:2),c(1:10:2,1:10:2),n)
if (any(c(1:10:2,1)/=(/1425.,1475.,1525.,1575.,1625./)))write(6,*) "NG"
print *,'pass'
contains
subroutine sub1(x,y,z,n)
real(8),dimension(:,:)::x(n/2,n/2),y,z
z(:,1)=matmul(x,y(:,1))
end subroutine sub1
end
