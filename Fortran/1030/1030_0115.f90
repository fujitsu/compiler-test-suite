subroutine sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y)
real(8):: POP1(i5+6),POP(i5+1,i10),Y(i10)
POP(1:N1,2)=MATMUL(POP1(2:N3+1),transpose(POP(2:N2+1,1:N3)))
end
real(8):: POP1(5+6),POP(11,6),Y(10)
i5=5
i10=10
n1=5
n2=5
n3=10
k1=0
k2=0
n4=10
pop1=-3
pop=reshape((/(i,i=1,11*6)/),(/11,6/))
y=reshape((/(i,i=1,10)/),(/10/))
call sub(i5,i10,n1,n2,n3,n4,k1,k2,pop1,pop,y)
if (any(abs(pop(7:11,1)-(/-870.,-900.,-930.,-960.,-990./))>0.01))print *,'error'
print *,'pass'
end
