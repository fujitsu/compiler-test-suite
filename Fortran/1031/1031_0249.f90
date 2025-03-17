REAL(KIND=8)::A(3,3,3),B(2,2)
A=reshape((/(i,i=1,27)/),(/3,3,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(3,1:2,1:2)=MATMUL(A(1:2,1:2,3),B)
if (any(abs((/A(3,1:2,1:2)/)-(/&
63,66,145,152&
/))>0.001))then
print *,int(A(3,1:2,1:2))
print *,'error'
endif

print *,'pass'
end
