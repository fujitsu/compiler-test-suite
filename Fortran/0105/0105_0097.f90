subroutine sub(a,EnsTim,Poj1,i5,N,K)
complex(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2)
A(K+1:K+N,K+1:K+N)= MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))+A(K+1:K+N,K+1:K+N)
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
1806,1922,2038,2154,2270,16,17,2338,2489,2640,2791,2942,23,24,2870,3056,3242,3428,3614,30,31,3402,3623,3844,4065,4286,37,38,3934,4190,4446,4702,4958,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59&
/))>0.01))print *,'error'

print *,'pass'
end
