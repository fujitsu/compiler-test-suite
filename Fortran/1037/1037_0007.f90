parameter (n=8)
real(4),dimension(n,n)::b
real(4),dimension(n,n)::c,a
a=reshape((/(j,j=1,n*n)/),(/n,n/))
b=a
c=0
call sub1(a(::2,::2),b(::2,::2),c(::2,::2))
if (any(abs((/c(::4,::4)/)-(/ 166,190,1254,1534/))>0.001))print *,'error'
print *,'pass'
contains
subroutine sub1(x,y,z)
real(4),dimension(:,:)::y
real(4),dimension(:,:)::z,x
z(::2,::2)=matmul(x(::2,::2),y(::2,::2))
end subroutine sub1
end
