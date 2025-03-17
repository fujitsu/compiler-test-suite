REAL(KIND=8)::A(3,3,6:11),B(2,2)
A=reshape((/(i,i=1,54)/),(/3,3,6/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=-5;J=1;K=2;L=3
A(1:2,1:2,L+K+J+5)=MATMUL(TRANSPOSE(A(1:2,1:2,L+K+J+I+5)),B)
if (any(abs((/A(1:2,1:2,11)/)-(/&
5,14,11,32&
/))>0.001))then
print *,int(A(1:2,1:2,11))
print *,'error'
endif
print *,'pass'
end
