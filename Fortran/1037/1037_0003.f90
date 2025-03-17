parameter (n=4)
real(8),dimension(n,n)::b
real(8),dimension(n)::c,a
b=reshape((/(j,j=1,n*n)/),(/n,n/))
a=reshape((/(j,j=2,n+n)/),(/n/))
c=0
call sub1(a(2:3),b(2:3,2:3),c(2:3))
if (any(abs((/c/)-(/ &
0,46,74,0&
/))>0.001))write(6,*) "NG"
print *,'pass'
contains
subroutine sub1(x,y,z)
real(8),dimension(:,:)::y
real(8),dimension(:)::z,x
z=matmul(x,y)
end subroutine sub1
end
