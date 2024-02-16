subroutine sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y,ny,L,M,n5,poj1)
complex(8):: POP1(i5),POP(i10,i5),Y(i10),Poj1(6:6,5)
Poj1(NY*(L-1)+M,1:N5)=POP1(1:N1)-&
  2._8*MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4)) +&
  2._8*MATMUL(TRANSPOSE(POP(1:N2,1:N3)),Y(K1+1:K2+N4))
end
complex(8):: POP1(5),POP(10,5),Y(10),Poj1(6:6,5)
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
if (any(abs((/Poj1/)-(/&
11._8,12._8,13._8,14._8,15._8&
/))>0.01))print *,'error'
print *,'pass'
end
