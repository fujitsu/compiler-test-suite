REAL(KIND=8)::A(4,3),B(2,2)
A=reshape((/(i,i=1,27)/),(/4,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(3:4,1:2)=MATMUL(A(1:2,1:2),B)
if (any(abs((/A(3:4,1:2)/)-(/&
11,14,23,30&
/))>0.001))then
print *,int(A(3:4,1:2))
print *,'error'
endif
print *,'pass'
end
