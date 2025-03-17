REAL(KIND=8)::A(3,3,4:6),B(2,2)
A=reshape((/(i,i=1,27)/),(/3,3,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=-5;J=1;K=2;L=3
A(1:2,1:2,L+K+J)=MATMUL(A(1:2,1:2,L+K+J+I+5),B)
if (any(abs((/A(1:2,1:2,6)/)-(/&
63,66,145,152&
/))>0.001))then
print *,int(A(1:2,1:2,6))
print *,'error'
endif
print *,'pass'
end
