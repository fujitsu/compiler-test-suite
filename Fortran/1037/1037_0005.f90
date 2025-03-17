parameter (n=4)
real(8),target,dimension(n,n)::a,b,c
real(8),pointer,dimension(:,:)::x,y,z
a=reshape((/(j,j=1,n*n)/),(/n,n/))
b=a
c=a
x=>a(1:3,1:3)
y=>a(1:3,1:3)
z=>a(2:4,2:4)
z=matmul(x,y)
if (any(abs((/z/)-(/ &
38,44,50,98,116,134,158,188,218&
/))>0.001))write(6,*) "NG"
print *,'pass'
end
