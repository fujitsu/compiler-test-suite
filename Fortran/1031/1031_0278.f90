REAL(KIND=8)::A(3,4),B(2,2)
A=reshape((/(i,i=1,27)/),(/3,4/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(1:2,3:4)=MATMUL(A(1:2,1:2),B)
if (any(abs((/A(1:2,3:4)/)-(/&
9,12,19,26&
/))>0.001))then
print *,int(A(1:2,3:4))
print *,'error'
endif
print *,'pass'
end
