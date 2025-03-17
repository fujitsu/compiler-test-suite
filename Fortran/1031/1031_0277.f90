REAL(KIND=8)::A(3,4),B(2,2)
A=reshape((/(i,i=1,27)/),(/3,4/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(1:2,1:2)=MATMUL(A(1:2,3:4),B)
if (any(abs((/A(1:2,1:2)/)-(/&
27,30,61,68&
/))>0.001))then
print *,int(A(1:2,1:2))
print *,'error'
endif
print *,'pass'
end
