REAL(KIND=8)::A(4,3,2),B(2,2)
A=reshape((/(i,i=1,27)/),(/4,3,2/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=1
A(1:2,1:2,I)=MATMUL(transpose(A(3:4,1:2,2)),B)
if (any(abs((/A(1:2,1:2,1)/)-(/&
47,59,109,137&
/))>0.001))then
print *,int(A(1:2,1:2,1))
print *,'error'
endif
print *,'pass'
end
