subroutine sub(a,EnsTim,Poj1,i5,N,K,r)
real(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2),r
A(K+1:K+N,K+1:K+N)= A(K+1:K+N,K+1:K+N)&
-MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
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
-3579,-3808,-4037,-4266,-4495,16,17,-4622,-4921,-5220,-5519,&
-5818,23,24,-5665,-6034,-6403,-6772,-7141,30,31,-6708,-7147,&
-7586,-8025,-8464,37,38,-7751,-8260,-8769,-9278,-9787,44,45,&
46,47,48,49,50,51,52,53,54,55,56,57,58,59&
/))>0.01))print *,'error'
print *,'pass'
end
