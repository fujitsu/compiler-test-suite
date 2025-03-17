parameter (n=4)
real(4),dimension(n,n)::b
real(4),dimension(n,n)::c,a
a=reshape((/(j,j=1,n*n)/),(/n,n/))
b=a
c=0
call sub1(a(2:3,2:3),b(2:3,2:3),c(2:3,2:3))
if (any(abs((/c/)-(/ 0,0,0,0,0,106,119,0,0,170,191,0,0,0,0,0/))>0.001))print *,'error'
print *,'pass'
contains
subroutine sub1(x,y,z)
real(4),dimension(:,:)::y
real(4),dimension(:,:)::z,x
z=matmul(x,y)
end subroutine sub1
end
