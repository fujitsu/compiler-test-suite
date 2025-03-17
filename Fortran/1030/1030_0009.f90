subroutine sub(a,EnsTim,Poj1,i5,N,K)
real(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2)
A(K+1:K+N,K+1:K+N)= A(K+1:K+N,K+1:K+N)-MATMUL(EnsTim(1:N,1:N),transpose(Poj1(1:N,1:N)))
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
-3104,-3278,-3452,-3626,-3800,16,17,-3172,-3351,-3530,-3709,-3888,&
23,24,-3240,-3424,-3608,-3792,-3976,30,31,-3308,-3497,-3686,-3875,&
-4064,37,38,-3376,-3570,-3764,-3958,-4152,44,45,46,47,48,49,50,51,&
52,53,54,55,56,57,58,59&
/))>0.01))print *,'error'
print *,'pass'
end
