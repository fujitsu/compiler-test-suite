module m1
contains
subroutine sub(DX,n1,n2,n,k,EnsTim,Xp)
real(8):: EnsTim(:,:),DX(:),Xp(:)
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(Xp(1:N2),transpose(EnsTim(1:N1,1:N2)))
end subroutine
end
use m1
real(8):: EnsTim(5,10),DX(5),Xp(10)
n1=5
n2=10
n=5
k=0
EnsTim=reshape((/(i,i=1,10*5)/),(/5,10/))
Xp=reshape((/(i,i=1,10)/),(/10/))
DX=reshape((/(i,i=21,25)/),(/5/))
call sub(DX,n1,n2,n,k,EnsTim,Xp)
if (any(abs(DX+(/1684,1738,1792,1846,1900/))>0.01))print *,'error'
print *,'pass'
end
