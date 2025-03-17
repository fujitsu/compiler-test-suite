REAL(KIND=8)::A(3,3,3),B(2,2)
A=reshape((/(i,i=1,27)/),(/3,3,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(3,1:2,1:2)=MATMUL(A(1:2,1:2,3),TRANSPOSE(B))
if (any(abs((/A(3,1:2,1:2)/)-(/&
85,89,126,132&
/))>0.001))then
print *,int(A(3,1:2,1:2))
print *,'error'
endif

print *,'pass'
end
