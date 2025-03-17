subroutine sub(a,EnsTim,Poj1,i5,N,K,r)
real(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2),r
A(K+1:K+N,K+1:K+N)= A(K+1:K+N,K+1:K+N)-MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))*r&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 -MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))*r&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))*(-2.0_8)&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))*r&
 -MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))
end
real(8):: EnsTim(7,7),A(7,7),Poj1(7,7),r
r=2.0
i5=5
n=5
k=0
EnsTim=reshape((/(i,i=1,49)/),(/7,7/))
A=reshape((/(i,i=11,59)/),(/7,7/))
Poj1=reshape((/(i,i=21,69)/),(/7,7/))
call       sub(a,EnsTim,Poj1,i5,N,K,r)
if (any(abs((/A/)-(/&
5396,5742,6088,6434,6780,16,17,6978,7429,7880,8331,8782,23,24,&
8560,9116,9672,10228,10784,30,31,10142,10803,11464,12125,12786,&
37,38,11724,12490,13256,14022,14788,44,45,46,47,48,49,50,51,52,&
53,54,55,56,57,58,59&
/))>0.01))print *,'error'
print *,'pass'
end
