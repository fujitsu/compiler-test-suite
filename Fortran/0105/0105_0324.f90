subroutine sub(K,N,EnsTim,POP1,Poj1,X)
complex(8):: Poj1(K),EnsTim(1:N,1:N),POP1(N),X(N)
Poj1(1:N)=X(1:N)*MATMUL(EnsTim(1:N,1:N),POP1(1:N))*X(1:N)
end
complex(8):: Poj1(15),EnsTim(-5:-1,-5:-1),POP1(5),X(5)
Poj1=reshape((/(i,i=1,15)/),(/15/))
EnsTim=reshape((/(i,i=11,35)/),(/5,5/))
POP1=reshape((/(i,i=21,25)/),(/5/))
X=reshape((/(i,i=2,6)/),(/5/))
K=15
N=5
call sub(K,N,EnsTim,POP1,Poj1,X)
if (any(abs((/Poj1/)-(/&
9860,23220,43120,70250,105300,6,7,8,9,10,11,12,13,14,15&
/))>0.01))print *,'error'
print *,'pass'
end

