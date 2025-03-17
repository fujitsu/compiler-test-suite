parameter (n=4)
real(8),target,dimension(n,n)::a,b,c
real(8),pointer,dimension(:,:)::x
real(8),pointer,dimension(:)::y,z
a=reshape((/(j,j=1,n*n)/),(/n,n/))
b=a
c=a
x=>a(1:3,1:3)
y=>a(1:3,2)
z=>a(2:4,2)
z=matmul(x,y)
if (any(abs((/z/)-(/ 98,116,134 /))>0.001))write(6,*) "NG"
a=b
z=matmul(a(1:3,1:3),y)
if (any(abs((/z/)-(/ 98,116,134 /))>0.001))write(6,*) "NG"
a=b
z=matmul(a(1:3,1:3),a(1:3,2))
if (any(abs((/z/)-(/ 98,116,134 /))>0.001))write(6,*) "NG"
a=b
z=matmul(c(1:3,1:3),c(1:3,2))+a(2:4,2)
if (any(abs((/z/)-(/ 104,123,142/))>0.001))write(6,*) "NG"
a=b
a(2:4,2)=matmul(c(1:3,1:3),c(1:3,2))+z
if (any(abs((/z/)-(/ 104,123,142/))>0.001))write(6,*) "NG"
print *,'pass'
end
