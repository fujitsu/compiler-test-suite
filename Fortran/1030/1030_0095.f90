subroutine sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y)
real(8):: POP1(i5),POP(i5,i10),Y(i10)
POP1(1:0+N1)=POP1(1:N1+0)+MATMUL(POP(1:N2,1:N3),Y(K1+1:K2+N4))
end
real(8):: POP1(5),POP(10,5),Y(10)
i5=5
i10=10
n1=5
n2=5
n3=10
k1=0
k2=0
n4=10
pop=reshape((/(i,i=1,10*5)/),(/10,5/))
y=reshape((/(i,i=1,10)/),(/10/))
pop1=reshape((/(i,i=1,5)/),(/5/))
call sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y)
if (any(abs(pop1-(/1705,1760,1815,1870,1925/)&
-reshape((/(i,i=1,5)/),(/5/)))>0.01))print *,'error'
print *,'pass'
end
