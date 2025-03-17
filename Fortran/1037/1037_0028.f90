module m1
contains
subroutine sub(a,EnsTim,Poj1,i5,N,K)
real(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2)
call subx(EnsTim,a,Poj1,K,N)
end subroutine
subroutine subx(EnsTim,a,Poj1,K,N)
real(8):: EnsTim(:,:),A(:,:),Poj1(:,:)
A(K+1:K+N,K+1:K+N)= A(K+1:K+N,K+1:K+N)-MATMUL(transpose(EnsTim(1:N,1:N)),Poj1(1:N,1:N))
end subroutine
end
use m1
real(8):: EnsTim(7,7),A(7,7),Poj1(7,7)
i5=5
n=5
k=0
EnsTim=reshape((/(i,i=1,49)/),(/7,7/))
A=reshape((/(i,i=11,59)/),(/7,7/))
Poj1=reshape((/(i,i=21,69)/),(/7,7/))
call       sub(a,EnsTim,Poj1,i5,N,K)
if (any(abs((/A/)-(/&
-344,-1148,-1952,-2756,-3560,16,17,-442,-1491,-2540,-3589,-4638,&
23,24,-540,-1834,-3128,-4422,-5716,30,31,-638,-2177,-3716,-5255,&
-6794,37,38,-736,-2520,-4304,-6088,-7872,44,45,46,47,48,49,50,51,&
52,53,54,55,56,57,58,59&
/))>0.01))print *,'error'
print *,'pass'
end
