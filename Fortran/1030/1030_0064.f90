subroutine sub(K,N,DX,hiTim,Xp)
real(8):: DX(K),hiTim(K,K),Xp(K)
DX= DX-MATMUL(Xp(N:K),transpose(hiTim(N:K,N:K)))*0.5_8
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
-12056.5_8,-12113.0_8,-12169.5_8,-12226.0_8,-12282.5_8&
/))>0.01))print *,'error'
print *,'pass'
end
