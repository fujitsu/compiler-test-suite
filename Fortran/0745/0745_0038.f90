module m1
contains
subroutine sub(K,N,EnsTim,Poj1)
real(8):: Poj1(K),EnsTim(1:N,1:N)
Poj1(1:N)=MATMUL(EnsTim(1:N,1:N),Poj1(1:N))
end subroutine
end
use m1
real(8):: Poj1(15),EnsTim(-5:-1,-5:-1)
EnsTim=reshape((/(i,i=11,35)/),(/5,5/))
Poj1=reshape((/(i,i=1,15)/),(/15/))
K=15
N=5
call sub(K,N,EnsTim,Poj1)
if (any(abs((/Poj1/)-(/&
365,380,395,410,425,6,7,8,9,10,11,12,13,14,15&
/))>0.01))print *,'error'
print *,'pass'
end
