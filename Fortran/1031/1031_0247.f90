REAL(KIND=8)::A(3,3,-2:-1),B(2,2)
parameter(k=2)
A=reshape((/(i,i=1,18*2)/),(/3,3,2/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(1_k:2_k,1_k:2_k,-1_k)=MATMUL(A(1_k:2_k,1_k:2_k,-2_k),B)
if (any(abs((/A/)-(/&
1,2,3,4,5,6,7,8,9,9,12,12,19,26,15,16,17,18&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end
