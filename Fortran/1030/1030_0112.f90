subroutine sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y)
real(8):: POP1(i5),POP(i10,i5),Y(i10)
POP1(1:N1)=MATMUL(Y(K1+1:K2+N4),POP(1:N3,1:N2))+ Y(1:N1)+&
           MATMUL(Y(K1+1:K2+N4),POP(1:N3,1:N2))+ 1.0
end
real(8):: POP1(5),POP(5,10),Y(10)
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
call sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y)
if (any(abs(pop1-(/771.,1872.,2973.,4074.,5175./)-1.)>0.01))print *,'error'
print *,'pass'
end
