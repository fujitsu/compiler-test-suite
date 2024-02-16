subroutine sub(a,EnsTim,Poj1,i5,N,K)
complex(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2)
A(K+1:K+N,K+1:K+N)= 2.0_8*A(K+1:K+N,K+1:K+N)&
-MATMUL(transpose(EnsTim(1:N,1:N)),Poj1(1:N,1:N))&
-MATMUL(transpose(EnsTim(1:N,1:N)),Poj1(1:N,1:N))&
-MATMUL(transpose(EnsTim(1:N,1:N)),Poj1(1:N,1:N))&
-MATMUL(transpose(EnsTim(1:N,1:N)),Poj1(1:N,1:N))&
-MATMUL(transpose(EnsTim(1:N,1:N)),Poj1(1:N,1:N))
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
-1753,-5776,-9799,-13822,-17845,16,17,-2264,-7512,-12760,-18008,&
-23256,23,24,-2775,-9248,-15721,-22194,-28667,30,31,-3286,-10984,&
-18682,-26380,-34078,37,38,-3797,-12720,-21643,-30566,-39489,44,45,&
46,47,48,49,50,51,52,53,54,55,56,57,58,59&
/))>0.01))print *,'error'

print *,'pass'
end
