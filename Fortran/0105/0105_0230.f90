subroutine sub(a,EnsTim,Poj1,i5,N,K)
complex(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2)
A(K+1:K+N,K+1:K+N)= 2.0_8*A(K+1:K+N,K+1:K+N)&
-MATMUL(EnsTim(1:N,1:N),transpose(Poj1(1:N,1:N)))&
-MATMUL(EnsTim(1:N,1:N),transpose(Poj1(1:N,1:N)))&
-MATMUL(EnsTim(1:N,1:N),transpose(Poj1(1:N,1:N)))&
-MATMUL(EnsTim(1:N,1:N),transpose(Poj1(1:N,1:N)))
end
complex(8):: EnsTim(7,7),A(7,7),Poj1(7,7)
i5=5
n=5
k=0
EnsTim=reshape((/(i,i=1,49)/),(/7,7/))
A=reshape((/(i,i=11,59)/),(/7,7/))
Poj1=reshape((/(i,i=21,69)/),(/7,7/))
call       sub(a,EnsTim,Poj1,i5,N,K)
if (any(abs((/A/)-(/&
-12438,-13136,-13834,-14532,-15230,16,17,-12724,-13442,-14160,&
-14878,-15596,23,24,-13010,-13748,-14486,-15224,-15962,30,31,&
-13296,-14054,-14812,-15570,-16328,37,38,-13582,-14360,-15138,&
-15916,-16694,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59&
/))>0.01))print *,'error'

print *,'pass'
end
