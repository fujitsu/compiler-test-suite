subroutine sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
real(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5)
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)+MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))
end
real(8):: POP1(5),POP(10,5),Y(10),Poj1(6:6,5)
i5=5
i10=10
n1=5
n2=10
n3=5
k1=0
k2=0
n4=10
ny=1
L=3
M=4
n5=5
pop1=reshape((/(i,i=11,15)/),(/5/))
pop=reshape((/(i,i=1,10*5)/),(/10,5/))
y=reshape((/(i,i=1,10)/),(/10/))
call sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
if (any(abs(poj1(6,:)-(/396,947,1498,2049,2600/))>0.01))print *,'error'
print *,'pass'
end
