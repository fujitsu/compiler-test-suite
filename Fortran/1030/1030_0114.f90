subroutine sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y)
real(8):: POP1(i5+6),POP(i5,i10),Y(i10)
POP(1:N1,2)=MATMUL(POP1(2:N3+1),transpose(POP(1:N2,1:N3)))
end
real(8):: POP1(5+6),POP(10,5),Y(10)
i5=5
i10=10
n1=5
n2=5
n3=10
k1=0
k2=0
n4=10
pop1=-3
pop=reshape((/(i,i=1,10*5)/),(/10,5/))
y=reshape((/(i,i=1,10)/),(/10/))
call sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y)
if (any(abs(pop(6:10,1)-(/-705,-735,-765,-795,-825/))>0.01))print *,'error'
print *,'pass'
end
