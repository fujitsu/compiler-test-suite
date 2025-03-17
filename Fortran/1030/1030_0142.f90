subroutine sub(a,EnsTim,Poj1,i5,N,K)
real(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2)
r=2.0_8
A(K+1:K+N,K+1:K+N)= A(K+1:K+N,K+1:K+N)*r&
-MATMUL(transpose(EnsTim(1:N,1:N)),transpose(Poj1(1:N,1:N)))&
+MATMUL(transpose(EnsTim(1:N,1:N)),         (Poj1(1:N,1:N)))&
+MATMUL(         (EnsTim(1:N,1:N)),transpose(Poj1(1:N,1:N)))&
-MATMUL(transpose(EnsTim(1:N,1:N)),transpose(Poj1(1:N,1:N)))
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
2302,834,-634,-2102,-3570,16,17,2466,1178,-110,-1398,-2686,23,24,&
2630,1522,414,-694,-1802,30,31,2794,1866,938,10,-918,37,38,2958,&
2210,1462,714,-34,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59&
/))>0.01))print *,'error'
print *,'pass'
end
