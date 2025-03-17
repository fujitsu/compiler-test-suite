subroutine sub(K,N,DX,hiTim,Xp)
real(8):: DX(K),hiTim(K,K),Xp(K)
DX= DX-MATMUL(hiTim(N:K,N:K),Xp(N:K))
end
parameter(KK=5)
real(8):: DX(KK),hiTim(KK,KK),Xp(KK)
DX=reshape((/(i,i=101,105)/),(/5/))
hiTim=reshape((/(i,i=201,225)/),(/5,5/))
Xp=reshape((/(i,i=21,25)/),(/5/))
K=KK
N=1
call sub(K,N,DX,hiTim,Xp)
if (any(abs((/DX/)-(/&
-24214._8,-24328._8,-24442._8,-24556._8,-24670._8&
/))>0.01))print *,'error'
print *,'pass'
end
