subroutine sub(A,K,HiTim,Poj3)
complex(8):: A(K,K),HiTim(K,K),Poj3(K,K)
A(1:K,1:K)= A(1:K,1:K)-MATMUL(hiTim(1:K,1:K),Poj3(1:K,1:K))
end
complex(8):: A(5,5),HiTim(5,5),Poj3(5,5)
a=reshape((/(i,i=1,25)/),(/5,5/))
HiTim=reshape((/(i,i=11,35)/),(/5,5/))
Poj3=reshape((/(i,i=21,45)/),(/5,5/))
call sub(A,5,HiTim,Poj3)
if (any(abs((/A/)-(/-2464,-2578,-2692,-2806,-2920,-2984,-3123,-3262,-3401,-3540,-3504,-3668,-3832,-3996,-4160,-4024,-4213,-4402,-4591,-4780,-4544,-4758,-4972,-5186,-5400/))>0.00001))print *,'error'

print *,'pass'
end

