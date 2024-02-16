complex(8):: POP1(5),POP(5,10),Y(10)
EQUIVALENCE (POP,X)
i5=5
i10=10
n1=5
n2=5
n3=10
k1=0
k2=0
n4=10
pop=reshape((/(i,i=1,10*5)/),(/5,10/))
y=reshape((/(i,i=1,10)/),(/10/))
pop1=reshape((/(i,i=1,5)/),(/5/))
POP1(1:N1)=POP1(1:N1)+MATMUL(POP(1:N2,1:N3),Y(K1+1:K2+N4))
if (any(abs(pop1-(/1705,1760,1815,1870,1925/)&
-reshape((/(i,i=1,5)/),(/5/)))>0.01))print *,'error'
print *,'pass'
end
