REAL(KIND=8)::A(3,3),B(2,2)
A=reshape((/(i,i=1,27)/),(/3,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=1;J=2
A(1:2,I:2)=MATMUL(TRANSPOSE(A(2:3,1:J)),B)
if (any(abs((/A(1:2,1:2)/)-(/&
8,17,18,39&
/))>0.001))then
print *,int(A(1:2,1:2))
print *,'error'
endif
print *,'pass'
end
