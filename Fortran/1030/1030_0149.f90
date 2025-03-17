subroutine sub(a,EnsTim,Poj1,i5,N,K)
real(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2)
A(K+1:K+N,K+1:K+N)= +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))+&
  MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))+A(K+1:K+N,K+1:K+N)
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
3601,3832,4063,4294,4525,16,17,4658,4959,5260,5561,5862,23,&
24,5715,6086,6457,6828,7199,30,31,6772,7213,7654,8095,8536,37,&
38,7829,8340,8851,9362,9873,44,45,46,47,48,49,50,51,52,53,54,&
55,56,57,58,59&
/))>0.01))print *,'error'
print *,'pass'
end
