complex(KIND=8)::A(3,3,2),B(2,2)
A=reshape((/(i,i=1,18*2)/),(/3,3,2/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=1
A(1:2,1:2,I)=A(1:2,1:2,I)+MATMUL(B,A(1:2,1:2,I+1))
if (any(abs((/A/)-(/&
44,66,3,59,87,6,7,8,9,10,11,12,13,14,15,16,17,18&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end

