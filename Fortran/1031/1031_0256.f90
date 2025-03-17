REAL(KIND=8)::A(3,3,0:2),B(2,2)
A=reshape((/(i,i=1,27)/),(/3,3,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=-5;J=1;K=2;L=3
A(1:2,1:2,L+K+J+I+1)=MATMUL(A(1:2,1:2,L+K+J+I-1),B)
if (any(abs((/A(1:2,1:2,2)/)-(/&
9,12,19,26&
/))>0.001))then
print *,int(A(1:2,1:2,2))
print *,'error'
endif
print *,'pass'
end
