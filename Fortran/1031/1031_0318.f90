REAL(KIND=8)::A(4,3),B(2,2)
A=reshape((/(i,i=1,27)/),(/4,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=1;J=2
A(1:2,I:2)=MATMUL(TRANSPOSE(A(3:4,1:J)),B)
if (any(abs((/A(1:2,1:2)/)-(/&
11,23,25,53&
/))>0.001))then
print *,int(A(1:2,1:2))
print *,'error'
endif
print *,'pass'
end
