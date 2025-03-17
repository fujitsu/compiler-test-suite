subroutine sub(a,EnsTim,Poj1,i5,N,K)
real(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2)
A(K+1:K+N,K+1:K+N)= A(K+1:K+N,K+1:K+N)-MATMUL(transpose(EnsTim(1:N,1:N)),transpose(Poj1(1:N,1:N)))
end
real(8):: EnsTim(7,7),A(7,7),Poj1(7,7)
i5=5
n=5
k=0
EnsTim=reshape((/(i,i=1,49)/),(/7,7/))
A=reshape((/(i,i=11,59)/),(/7,7/))
Poj1=reshape((/(i,i=21,69)/),(/7,7/))
call       sub(a,EnsTim,Poj1,i5,N,K)
if (any(abs((/A/)-(/&
-584,-1808,-3032,-4256,-5480,16,17,-592,-1851,-3110,-4369,-5628,&
23,24,-600,-1894,-3188,-4482,-5776,30,31,-608,-1937,-3266,-4595,&
-5924,37,38,-616,-1980,-3344,-4708,-6072,44,45,46,47,48,49,50,51,&
52,53,54,55,56,57,58,59&
/))>0.01))print *,'error'
print *,'pass'
end
