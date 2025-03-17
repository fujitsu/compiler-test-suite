subroutine sub(K,N,EnsTim,POP1,Poj1)
real(8):: Poj1(K),EnsTim(1:N,1:N),POP1(N)
Poj1(1:N)=0.5D0*MATMUL(EnsTim(1:N,1:N),POP1(1:N))
end
real(8):: Poj1(15),EnsTim(-5:-1,-5:-1),POP1(5)
Poj1=reshape((/(i,i=1,15)/),(/15/))
EnsTim=reshape((/(i,i=11,35)/),(/5,5/))
POP1=reshape((/(i,i=21,25)/),(/5/))
K=15
N=5
call sub(K,N,EnsTim,POP1,Poj1)
if (any(abs((/Poj1/)-(/&
1232.5,1290.0,1347.5,1405.,1462.5,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.&
/))>0.01))print *,'error'
print *,'pass'
end
