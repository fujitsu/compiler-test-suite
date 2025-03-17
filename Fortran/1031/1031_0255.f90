REAL(KIND=8)::A(3,3,7:11),B(2,2)
A=reshape((/(i,i=1,45)/),(/3,3,5/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=-1;J=1;K=2;L=3
A(1:2,1:2,L+K+J-I+4)=MATMUL(A(1:2,1:2,L+K+J+I+2),B)
if (any(abs((/A(1:2,1:2,11)/)-(/&
9,12,19,26&
/))>0.001))then
print *,int(A(1:2,1:2,11))
print *,'error'
endif
print *,'pass'
end
