REAL(KIND=8)::A(3,3,-3:5),B(2,2)
A=reshape((/(i,i=1,81)/),(/3,3,9/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=-5;J=1;K=2;L=3
A(1:2,1:2,-L)=MATMUL(TRANSPOSE(A(1:2,1:2,L+K+J+I+4)),B)
if (any(abs((/A(1:2,1:2,-3)/)-(/&
221,230,515,536&
/))>0.001))then
print *,int(A(1:2,1:2,-3))
print *,'error'
endif
print *,'pass'
end
