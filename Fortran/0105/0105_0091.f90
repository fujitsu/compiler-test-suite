subroutine sub(DX,i5,i10,n1,n2,n,k,EnsTim,Xp)
complex(8):: EnsTim(i5,i10),DX(i5),Xp(i10)
DX(K+1:K+N)= DX(K+1:K+N)-MATMUL(EnsTim(1:N1,1:N2),Xp(1:N2))
end
complex(8):: EnsTim(5,10),DX(5),Xp(10)
i5=5
i10=10
n1=5
n2=10
n=5
k=0
EnsTim=reshape((/(i,i=1,10*5)/),(/5,10/))
Xp=reshape((/(i,i=1,10)/),(/10/))
DX=reshape((/(i,i=21,25)/),(/5/))
call sub(DX,i5,i10,n1,n2,n,k,EnsTim,Xp)
if (any(abs(DX+(/1684,1738,1792,1846,1900/))>0.01))print *,'error'
print *,'pass'
end
