subroutine sub(NKY,L,M,N,K,Poj4,POP,Y,N1,i10)
real(8):: Poj4(6,N),POP(N1,N1),Y(i10)
Poj4(6,1:5)=MATMUL(TRANSPOSE(POP(1:5,1:5)),Y(1:5))
end
real(8):: Poj4(6,5),POP(7,7),Y(10)
NKY=2
L=2
M=4
N=5
K=5
N1=7
i10=10
pop=reshape((/(i,i=1,7*7)/),(/7,7/))
y=reshape((/(i,i=11,21)/),(/10/))
call  sub(NKY,L,M,N,K,Poj4,POP,Y,N1,i10)
if (any(abs(poj4(6,1:5)-(/205.,660.,1115.,1570.,2025./))>0.01))print *,'error'
print *,'pass'
end
