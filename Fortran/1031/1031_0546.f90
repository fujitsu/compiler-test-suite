REAL(KIND=8)::A(3,3,1:5),B(2,2)
A=reshape((/(i,i=1,45)/),(/3,3,5/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=-5;J=1;K=2;L=3
A(1:2,1:2,L-K+J+I+4)=MATMUL(A(1:2,1:2,L+K+J+I+2),TRANSPOSE(B))
if (any(abs((/A(1:2,1:2,1)/)-(/&
85,89,126,132&
/))>0.001))then
print *,int(A(1:2,1:2,1))
print *,'error'
endif
print *,'pass'
end
