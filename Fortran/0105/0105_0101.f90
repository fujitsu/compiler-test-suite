subroutine sub(DX,hiTim,Xp,K,i5,i10)
complex(8):: DX(i10),hiTim(i10,i5),Xp(i10)
DX(1:K)= DX(1:K)-MATMUL(hiTim(1:K,1:K),Xp(1:K))
end
complex(8):: DX(10),hiTim(10,5),Xp(10)
i5=5
i10=10
k=5
DX=reshape((/(i,i=111,120)/),(/10/))
hiTim=reshape((/(i,i=1,10*5)/),(/10,5/))
Xp=reshape((/(i,i=1,10)/),(/10/))
call       sub(DX,hiTim,Xp,K,i5,i10)
if (any(abs(DX-(/&
-304,-318,-332,-346,-360,116,117,118,119,120&
/))>0.01))print *,'error'
print *,'pass'
end
